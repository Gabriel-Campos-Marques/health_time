import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

import '../widgets/health_tima_informations_user_widget.dart';

class HomePageHealthUser extends StatelessWidget {
  const HomePageHealthUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 250,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondColor,
          boxShadow: const [
            BoxShadow(
              color: blurColor,
              blurRadius: 10,
              offset: Offset(1, 10),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 235,
              width: 155,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(5),
                color: secondColor,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HealthTimeInformationsUserWidget(
                    icon: "assets/gota-de-sangue.png",
                    information: "A+",
                  ),
                  HealthTimeInformationsUserWidget(
                    icon: "assets/altura.png",
                    information: "1.70m",
                  ),
                  HealthTimeInformationsUserWidget(
                    icon: "assets/massa-corporal.png",
                    information: "17,5",
                  ),
                  HealthTimeInformationsUserWidget(
                    icon: "assets/data-de-nascimento.png",
                    information: "17/10/01",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
