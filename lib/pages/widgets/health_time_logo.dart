import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class HealthTimeLogo extends StatelessWidget {
  const HealthTimeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 80,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondColor,
            boxShadow: const [
              BoxShadow(
                  color: blurColor, blurRadius: 10, offset: Offset(1, 10)),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/health_time_logo.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
