import 'package:flutter/material.dart';

import '../widgets/health_time_card.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            HealthTimeCards(image: 'assets/consulta_exames.png'),
            HealthTimeCards(image: 'assets/ler_qrcode.png'),
            HealthTimeCards(image: 'assets/configuracoes.png'),
          ],
        ),
      ],
    );
  }
}
