import 'package:flutter/material.dart';
import 'package:health_time/pages/config_page.dart';
import 'package:health_time/pages/home_page.dart';
import 'package:health_time/pages/sucess_page.dart';

class RouteGerenate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map;
    switch (settings.name) {
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => HomePage(user: args['user']));

      case '/configUser':
        return MaterialPageRoute(
            builder: (_) => ConfigPage(
                  informacoesUser: args['informacoesUser'],
                  user: args['user'],
                ));
      default:
        return MaterialPageRoute(builder: (_) => const SucessPage());
    }
  }
}
