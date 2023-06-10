import 'package:flutter/material.dart';
import 'package:health_time/models/user.dart';

import '../widgets/health_time_card.dart';

class HomePageButtons extends StatefulWidget {
  const HomePageButtons({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<HomePageButtons> createState() => _HomePageButtonsState();
}

class _HomePageButtonsState extends State<HomePageButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HealthTimeCards(image: 'assets/consulta_exames.png'),
            const HealthTimeCards(image: 'assets/ler_qrcode.png'),
            InkWell(
                onTap: () async {
                  List<String> informationUser =
                      await widget.user.informacoesUser(widget.user.idUser!);
                  if (context.mounted) {
                    Navigator.pushNamed(
                      context,
                      '/configUser',
                      arguments: {
                        'informacoesUser': informationUser,
                        'user': widget.user,
                      },
                    );
                  }
                },
                child: const HealthTimeCards(
                  image: 'assets/configuracoes.png',
                )),
          ],
        ),
      ],
    );
  }
}
