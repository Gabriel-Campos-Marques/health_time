import 'package:flutter/material.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';

class HealthTimeUserPassword extends StatelessWidget {
  const HealthTimeUserPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          TextFieldHealthTime(hintText: 'CPF'),
          TextFieldHealthTime(hintText: 'Senha'),
        ],
      ),
    );
  }
}
