import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:health_time/models/user.dart';
import 'package:health_time/pages/components/home_page_informations_user.dart';
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
  readyQRCode() async {}

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/searchExam',
                    arguments: {'user': widget.user});
              },
              child: const HealthTimeCards(image: 'assets/consulta_exames.png'),
            ),
            InkWell(
                splashColor: Colors.black,
                onTap: () async {
                  String code = await FlutterBarcodeScanner.scanBarcode(
                    '#FFFFFF',
                    'Sair',
                    false,
                    ScanMode.QR,
                  );
                  log(code);
                },
                child: const HealthTimeCards(
                  image: 'assets/ler_qrcode.png',
                )),
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
                  ).then((value) {
                    setState(() {
                      HomePageInformationsUser;
                    });
                  });
                }
              },
              child: const HealthTimeCards(
                image: 'assets/configuracoes.png',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
