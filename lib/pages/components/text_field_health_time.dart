import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class TextFieldHealthTime extends StatelessWidget {
  const TextFieldHealthTime({
    super.key,
    required this.hintText,
    required this.textEditingController,
  });

  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(cornerRadiusPrimary),
            color: secondColor,
            boxShadow: boxShadow),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * .87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(cornerRadiusSecondary),
                color: secondColor,
                border: Border.all(
                  width: 5,
                  color: primaryColor,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: textEditingController,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: hintText,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
