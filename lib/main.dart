import 'package:flutter/material.dart';
import 'package:health_time/pages/config_page.dart';

void main() {
  runApp(const HealthTimeApp());
}

class HealthTimeApp extends StatelessWidget {
  const HealthTimeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ConfigPage(),
    );
  }
}
