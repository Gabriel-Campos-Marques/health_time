import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/widgets/health_time_logo.dart';

import 'components/button_health_time.dart';
import 'widgets/health_time_user_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: const SafeArea(
          child: Column(
            children: [
              HealthTimeLogo(),
              Spacer(),
              HealthTimeUserPassword(),
              Spacer(),
              ButtonHealthTime(
                height: 50,
                text: 'Cadastre-se',
              )
            ],
          ),
        ),
      ),
    );
  }
}
