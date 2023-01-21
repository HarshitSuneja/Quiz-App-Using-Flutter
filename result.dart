import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'main.dart';

class result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  result({this.resultScore, this.reset});
  String get resultPhrase {
    String resultText;
    if (resultScore > 20 && resultScore <= 30) {
      resultText = 'Good you are following God.';
    } else if (resultScore >= 10 && resultScore <= 20) {
      resultText = 'Pretty Likeable.';
    } else {
      resultText = 'You are so bad.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz!!'),
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
