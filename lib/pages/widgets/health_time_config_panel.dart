import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/type_config.dart';

class HealthTimeConfigPanel extends StatefulWidget {
  const HealthTimeConfigPanel({
    super.key,
  });

  @override
  State<HealthTimeConfigPanel> createState() => _HealthTimeConfigPanelState();
}

class _HealthTimeConfigPanelState extends State<HealthTimeConfigPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          color: secondColor, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .58,
            width: MediaQuery.of(context).size.width * .85,
            decoration: BoxDecoration(
              color: secondColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
                width: 5,
              ),
            ),
            child: const Column(
              children: [
                TypeConfig(
                  iconType: 'assets/gota-de-sangue.png',
                  labelText: 'Tipo sanguíneo:',
                  selectItem: 'A+',
                  typeItems: ['A+', 'B+', 'O+'],
                ),
                TypeConfig(
                  iconType: 'assets/altura.png',
                  labelText: 'Altura:',
                  selectItem: '1.70m',
                  typeItems: ['1.69m', '1.68m', '1.70m'],
                ),
                TypeConfig(
                  iconType: 'assets/perda-de-peso.png',
                  labelText: 'Peso:',
                  selectItem: '68 kg',
                  typeItems: ['68 kg', '69kg', '70kg'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
