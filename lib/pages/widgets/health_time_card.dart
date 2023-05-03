import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class HealthTimeCards extends StatelessWidget {
  const HealthTimeCards({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 150,
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
                height: 135,
                width: 135,
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
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: secondColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    alignment: Alignment.centerLeft,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
