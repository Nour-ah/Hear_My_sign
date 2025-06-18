import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_grad/controller/QuizEngColor.dart';
import 'package:test_grad/model/QuestionArabic.dart';
import 'package:test_grad/widgets/AnswerOptionsEngColor.dart';


class QuestionCardEngColor extends StatelessWidget {
  final QuestionArabicModel questionModel;

  const QuestionCardEngColor({
    Key? key,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 227, 228, 227),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.0,
                    child: Image.asset(
                      questionModel.question,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 45),
                  ...List.generate(
                      questionModel.options.length,
                      (index) => Column(
                            children: [
                              AnswerOptionsEngColor(
                                  questionId: questionModel.id,
                                  text: questionModel.options[index],
                                  index: index,
                                  onPressed: () => Get.find<QuizEngColor>()
                                      .checkAnswer(questionModel, index)),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          )),
                ],
              ),
            ),
          )),
    );
  }
}
