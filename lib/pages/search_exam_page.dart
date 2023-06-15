import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/models/user.dart';
import 'package:health_time/pages/components/button_health_time.dart';

class SearchExamPage extends StatelessWidget {
  const SearchExamPage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 80,
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
                      'Buscar exames',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      const Text(
                        'Tipo de exame:',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondColor,
                            boxShadow: const [
                              BoxShadow(
                                color: blurColor,
                                blurRadius: 10,
                                offset: Offset(1, 10),
                              ),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 310,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 5,
                                  ),
                                  color: secondColor,
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: secondColor,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 40,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: [
                        const Text(
                          'Laboratório:',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondColor,
                              boxShadow: const [
                                BoxShadow(
                                  color: blurColor,
                                  blurRadius: 10,
                                  offset: Offset(1, 10),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 310,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 5,
                                    ),
                                    color: secondColor,
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: secondColor,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () async {
                        final List exames =
                            await user.encontrarExames(user.idUser!);
                        if (context.mounted) {
                          Navigator.pushNamed(context, '/exam', arguments: {
                            'elements': exames,
                          });
                        }
                      },
                      child: const ButtonHealthTime(
                        text: 'Buscar',
                        height: 70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const ButtonHealthTime(
                        text: 'Voltar',
                        height: 50,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
