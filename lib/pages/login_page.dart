import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';
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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HealthTimeLogo(),
              HealthTimeUserPassword(),
              ButtonHealthTime()
            ],
          ),
        ),
      ),
    );
  }
}
