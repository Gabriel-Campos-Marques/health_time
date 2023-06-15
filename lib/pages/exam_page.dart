import 'package:flutter/material.dart';
import 'package:health_time/constants/constants.dart';
import 'package:health_time/pages/components/button_health_time.dart';

class ExamPage extends StatefulWidget {
  const ExamPage({super.key, required this.exams});

  final List exams;

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: primaryColor,
            child: ListView.builder(
              itemCount: widget.exams.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
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
                            height: 45,
                            width: 360,
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
                            height: 35,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: secondColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                widget.exams.toString(),
                                style: textStyle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const ButtonHealthTime(
              text: 'Voltar',
              height: 50,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
