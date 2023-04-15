import 'package:flutter/material.dart';

import '../widgets/health_tima_informations_user_widget.dart';

class HomePageHealthUser extends StatelessWidget {
  const HomePageHealthUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(100, 77, 77, 77),
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
                    color: const Color.fromARGB(255, 176, 241, 255), width: 5),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
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
                    information: "17/10/2001",
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
