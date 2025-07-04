import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_grad/controller/QuizEngDay.dart';


class ProgressTimerEngDay extends StatelessWidget {
  ProgressTimerEngDay({Key? key}) : super(key: key);
  final controller = Get.find<QuizEngDay>();
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
