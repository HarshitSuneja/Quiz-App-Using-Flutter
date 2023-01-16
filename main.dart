import 'package:first_app/questions.dart';
import 'package:flutter/material.dart';

import 'Answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your favourite colour?',
        'answers': ['blue', 'red', 'black', 'yellow']
      },
      {
        'questionText': 'what is your favourite game',
        'answers': ['football', 'cricket', 'table tennis', 'badminton'],
      },
      {
        'questionText': 'who is your favourite athlete',
        'answers': [
          'Cristiano Ronaldo',
          'Virat Kohli',
          'Lionel Messi',
          'Neymar'
        ],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my firstapp'),
        ),
        body: Column(
          children: [
            Questions(questions[questionsIndex]['questionText']),
            /*ElevatedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer 3'),
              onPressed: answerQuestion,
            ),*/
            /*Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),*/
            ...(questions[questionsIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
