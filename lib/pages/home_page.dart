import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/models/user.dart';
import 'package:health_time/pages/components/home_page_buttons.dart';
import 'package:health_time/pages/components/home_page_name_user.dart';
import 'components/home_page_informations_user.dart';
import 'widgets/health_time_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HealthTimeLogo(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomePageButtons(user: user),
                      const HomePageInformationsUser(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: primaryColor,
        child: const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: HomePageNameUser(),
        ),
      ),
    );
  }
}
