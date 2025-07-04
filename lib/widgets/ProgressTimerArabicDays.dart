import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_grad/controller/QuizArabicDays.dart';


class ProgressTimerArabicDays extends StatelessWidget {
  ProgressTimerArabicDays({Key? key}) : super(key: key);
  final controller = Get.find<QuizArabicDays>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1 - (controller.sec.value / 15),
              color: const Color(0xFF649192),
              backgroundColor: Color.fromARGB(255, 205, 233, 233),
              strokeWidth: 8,
            ),
            Center(
              child: Text(
                '${controller.sec.value}',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF649192),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
