import 'package:flutter/material.dart';

class HealthTimeInformationsUserWidget extends StatelessWidget {
  const HealthTimeInformationsUserWidget({
    super.key,
    required this.icon,
    required this.information,
  });

  final String icon;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 97,
            child: Text(
              textAlign: TextAlign.center,
              information,
              style: TextStyle(
                fontSize: returnFontSize(information.length),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double returnFontSize(int size) {
  if (size <= 3) {
    return 32;
  } else if (size <= 5) {
    return 24;
  } else {
    return 18;
  }
}
