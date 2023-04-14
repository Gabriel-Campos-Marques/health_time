import 'package:flutter/material.dart';

class HealthTimeLogo extends StatelessWidget {
  const HealthTimeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 77, 77, 77),
                blurRadius: 10,
                offset: Offset(1, 10)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/health_time_logo.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
