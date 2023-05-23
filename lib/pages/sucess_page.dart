import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class SucessPage extends StatelessWidget {
  const SucessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Color.fromARGB(255, 49, 221, 57),
              size: 150,
            ),
            Text(
              'Cadastrado realizado com sucesso!',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
