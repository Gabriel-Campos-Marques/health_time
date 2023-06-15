import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/models/user.dart';
import 'package:health_time/pages/components/button_health_time.dart';
import 'widgets/health_time_config_panel.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({
    Key? key,
    required this.informacoesUser,
    required this.user,
  }) : super(key: key);
  final List<String> informacoesUser;
  final User user;

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: primaryColor,
        child: SafeArea(
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
                      'Configurações',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              HealthTimeConfigPanel(
                informacoesUsuario: widget.informacoesUser,
                user: widget.user,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      widget.user.updateInformationUser(
                          widget.user.idUser!,
                          int.parse(
                            widget.informacoesUser[1]
                                .toString()
                                .substring(0, 2),
                          ),
                          double.parse(widget.informacoesUser[0]
                              .toString()
                              .substring(0, 4)),
                          widget.informacoesUser[2].toString(),
                          widget.user);
                      Navigator.pushNamedAndRemoveUntil(context, '/dashboard',
                          (Route<dynamic> route) => false,
                          arguments: {
                            'user': widget.user,
                          });
                      // Navigator.pop(context);
                    },
                    child: const ButtonHealthTime(
                      text: 'Salvar',
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
