import 'package:flutter/material.dart';
import 'package:health_time/pages/components/button_health_time.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';

class HealthTimeUserPassword extends StatelessWidget {
  const HealthTimeUserPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const TextFieldHealthTime(hintText: 'CPF'),
          const TextFieldHealthTime(hintText: 'Senha'),
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
          ButtonHealthTime(height: 60, text: 'Entrar', onPress: () {}),
        ],
      ),
    );
  }
}
