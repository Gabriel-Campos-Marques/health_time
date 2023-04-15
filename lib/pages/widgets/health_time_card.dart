import 'package:flutter/material.dart';

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
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(100, 77, 77, 77),
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
                    color: const Color.fromARGB(255, 176, 241, 255),
                    width: 5,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
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
