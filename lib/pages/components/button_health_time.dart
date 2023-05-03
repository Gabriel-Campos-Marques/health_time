import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class ButtonHealthTime extends StatelessWidget {
  const ButtonHealthTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width * .65,
          decoration: BoxDecoration(
            color: secondColor,
            borderRadius: BorderRadius.circular(cornerRadiusPrimary),
            boxShadow: boxShadow,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width * .62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cornerRadiusSecondary),
                  color: secondColor,
                  border: Border.all(
                    color: primaryColor,
                    width: 5,
                  ),
                ),
                child: Text(
                  'Cadastre-se',
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
