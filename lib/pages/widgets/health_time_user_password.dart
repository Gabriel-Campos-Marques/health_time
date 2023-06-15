import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:health_time/models/user.dart';
import 'package:health_time/pages/components/button_health_time.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';

class HealthTimeUserPassword extends StatefulWidget {
  const HealthTimeUserPassword({
    super.key,
  });

  @override
  State<HealthTimeUserPassword> createState() => _HealthTimeUserPasswordState();
}

class _HealthTimeUserPasswordState extends State<HealthTimeUserPassword> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          TextFieldHealthTime(
              hintText: 'CPF', textEditingController: _userNameController),
          TextFieldHealthTime(
              hintText: 'Senha', textEditingController: _passwordController),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              alignment: Alignment.topLeft,
              child: const Text(
                'Esqueceu a Senha',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              if (_userNameController.text.isNotEmpty &&
                  _passwordController.text.isNotEmpty) {
                User user = User(
                  userName: _userNameController.text,
                  passWord: _passwordController.text,
                );

                user = await user.usuarioCadastrado(
                    user.userName!, user.passWord!);

                if (user.ativo! && context.mounted) {
                  Navigator.pushReplacementNamed(context, '/dashboard',
                      arguments: {
                        'user': user,
                      });
                } else {
                  log('Erro');
                }
              }
            },
            child: const ButtonHealthTime(
              height: 60,
              text: 'Entrar',
            ),
          ),
        ],
      ),
    );
  }
}
