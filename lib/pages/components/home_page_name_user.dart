import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';

class HomePageNameUser extends StatelessWidget {
  const HomePageNameUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: secondColor,
        boxShadow: const [
          BoxShadow(
            color: blurColor,
            blurRadius: 10,
            offset: Offset(1, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "Gabriel Campos Marques",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/perfil.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
