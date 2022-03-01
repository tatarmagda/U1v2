import 'package:flutter/material.dart';
import 'package:udemy1_v_2/qst.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qstIdx;
  final VoidCallback answerQuestion;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.qstIdx,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Question(
              questions[qstIdx]["qst1"] as String,
            ),
            ...(questions[qstIdx]["answers"] as List<String>)
                .map(
                  (answers) => Answer(answerQuestion, answers),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
