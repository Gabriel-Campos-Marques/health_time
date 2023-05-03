import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';
import 'package:health_time/pages/widgets/health_time_logo.dart';

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
            children: [
              const HealthTimeLogo(),
              const HealthTimeUserPassword(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * .65,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(cornerRadiusPrimary),
                    boxShadow: boxShadow,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * .62,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(cornerRadiusSecondary),
                          color: secondColor,
                          border: Border.all(
                            color: primaryColor,
                            width: 5,
                          ),
                        ),
                        child: Text(
                          'Cadastre-se',
                          style: textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
