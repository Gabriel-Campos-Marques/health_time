import 'package:flutter/material.dart';
import 'package:health_time/pages/components/text_field_health_time.dart';

class HealthTimeRegister extends StatelessWidget {
  const HealthTimeRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TextFieldHealthTime(hintText: 'Nome completo:'),
          TextFieldHealthTime(hintText: 'CPF:'),
          TextFieldHealthTime(hintText: 'Data de nascimento:'),
          TextFieldHealthTime(hintText: 'Senha:'),
          TextFieldHealthTime(hintText: 'Confirmar senha:'),
        ],
      ),
    );
  }
}
