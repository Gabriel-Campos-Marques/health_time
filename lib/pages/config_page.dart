import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/button_health_time.dart';
import 'widgets/health_time_config_panel.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 260,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: blurColor,
                          offset: Offset(5, 5),
                          blurRadius: 10)
                    ]),
                child: const Center(
                  child: Text(
                    'Configurações',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const HealthTimeConfigPanel(),
              ButtonHealthTime(
                text: 'Salvar',
                height: 60,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
