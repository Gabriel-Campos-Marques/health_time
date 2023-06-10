import 'package:flutter/material.dart';
import 'package:health_time/pages/login_page.dart';
import 'package:health_time/pages/routes/route_generate.dart';

void main() {
  runApp(const HealthTimeApp());
}

class HealthTimeApp extends StatelessWidget {
  const HealthTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGerenate.generateRoute,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
