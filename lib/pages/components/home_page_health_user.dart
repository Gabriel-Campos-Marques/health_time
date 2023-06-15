import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:intl/intl.dart';
import '../../models/user.dart';
import '../widgets/health_tima_informations_user_widget.dart';

class HomePageHealthUser extends StatefulWidget {
  const HomePageHealthUser({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<HomePageHealthUser> createState() => _HomePageHealthUserState();
}

class _HomePageHealthUserState extends State<HomePageHealthUser> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Container(
          height: 250,
          width: 170,
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
                height: 235,
                width: 155,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: secondColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HealthTimeInformationsUserWidget(
                      icon: "assets/gota-de-sangue.png",
                      information: widget.user.tipoSanguineo!,
                    ),
                    HealthTimeInformationsUserWidget(
                      icon: "assets/altura.png",
                      information: widget.user.altura!,
                    ),
                    HealthTimeInformationsUserWidget(
                      icon: "assets/massa-corporal.png",
                      information:
                          widget.user.massaCorporal!.round().toString(),
                    ),
                    HealthTimeInformationsUserWidget(
                      icon: "assets/data-de-nascimento.png",
                      information: DateFormat('dd/MM/yy')
                          .format(widget.user.dataNascimento!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
