import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class ButtonHealthTime extends StatelessWidget {
  const ButtonHealthTime({
    Key? key,
    required this.text,
    required this.height,
    this.width,
  }) : super(key: key);

  final String text;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? MediaQuery.of(context).size.width * .65,
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
            height: height - 10,
            width: width != null
                ? (width! - 10)
                : MediaQuery.of(context).size.width * .62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(cornerRadiusSecondary),
              color: secondColor,
              border: Border.all(
                color: primaryColor,
                width: 4,
              ),
            ),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
