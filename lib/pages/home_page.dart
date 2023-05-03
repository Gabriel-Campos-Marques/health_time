import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/home_page_buttons.dart';
import 'package:health_time/pages/components/home_page_name_user.dart';
import 'components/home_page_informations_user.dart';
import 'widgets/health_time_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: SafeArea(
          minimum: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HealthTimeLogo(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .65,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      HomePageButtons(),
                      HomePageInformationsUser(),
                    ],
                  ),
                ),
              ),
              const HomePageNameUser(),
            ],
          ),
        ),
      ),
    );
  }
}
