import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/type_config.dart';
import 'package:health_time/repository/healthtime_repository.dart';

class HealthTimeConfigPanel extends StatelessWidget {
  const HealthTimeConfigPanel({
    super.key,
    required this.informacoesUsuario,
  });

  final List<String> informacoesUsuario;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          color: secondColor, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .48,
            width: MediaQuery.of(context).size.width * .85,
            decoration: BoxDecoration(
              color: secondColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
                width: 5,
              ),
            ),
            child: Column(
              children: [
                TypeConfig(
                  iconType: 'assets/gota-de-sangue.png',
                  labelText: 'Tipo sanguíneo:',
                  selectItem: informacoesUsuario[2],
                  typeItems: tipoSanguineoRepository,
                  informacoes: informacoesUsuario,
                ),
                TypeConfig(
                  iconType: 'assets/altura.png',
                  labelText: 'Altura:',
                  selectItem: informacoesUsuario[0],
                  typeItems: alturaRepository,
                  informacoes: informacoesUsuario,
                ),
                TypeConfig(
                  iconType: 'assets/perda-de-peso.png',
                  labelText: 'Peso:',
                  selectItem: informacoesUsuario[1],
                  typeItems: pesoRepository,
                  informacoes: informacoesUsuario,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
