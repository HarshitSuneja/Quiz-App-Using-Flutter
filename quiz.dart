import 'package:first_app/questions.dart';
import 'package:flutter/cupertino.dart';

import 'Answers.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionsIndex;
  quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionsIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionsIndex]['questionText']),
        ...(questions[questionsIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
