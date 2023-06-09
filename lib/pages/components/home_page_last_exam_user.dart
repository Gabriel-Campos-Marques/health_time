import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class HomePageLastExamUser extends StatelessWidget {
  const HomePageLastExamUser({
    super.key,
    required this.dateExam,
    required this.typeExam,
  });

  final String dateExam;
  final String typeExam;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
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
              height: 201,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: primaryColor,
                  width: 5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    "Último Exame",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    dateExam,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    typeExam,
                    style: const TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
