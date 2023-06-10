import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/button_health_time.dart';
import 'package:health_time/pages/widgets/health_time_logo.dart';
import 'package:health_time/pages/widgets/health_time_register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: SafeArea(
          child: ListView(
            itemExtent: 700,
            children: const [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HealthTimeLogo(),
                  HealthTimeRegister(),
                  ButtonHealthTime(
                    text: 'Cadastrar',
                    height: 70,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
