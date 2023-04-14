import 'package:flutter/material.dart';

import 'widgets/health_time_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: const Color.fromARGB(255, 176, 241, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            HealthTimeLogo(),
          ],
        ),
      ),
    );
  }
}
