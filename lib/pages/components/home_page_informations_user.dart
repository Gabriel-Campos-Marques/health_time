import 'package:flutter/material.dart';
import 'package:health_time/pages/components/home_page_health_user.dart';
import '../../models/user.dart';
import 'home_page_last_exam_user.dart';

class HomePageInformationsUser extends StatelessWidget {
  const HomePageInformationsUser({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePageHealthUser(user: user),
        const HomePageLastExamUser(
          dateExam: "01/05/2022",
          typeExam: "Hemograma",
        ),
      ],
    );
  }
}
