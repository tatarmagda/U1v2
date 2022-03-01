import 'package:flutter/material.dart';
import 'package:udemy1_v_2/answer.dart';
import 'package:udemy1_v_2/qst.dart';
import 'package:udemy1_v_2/quiz.dart';
import 'package:udemy1_v_2/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _qst = const [
    {
      "qst1": "Ulubiony kolor?",
      "answers": [
        {"text": "czerwony", "score": 0},
        {"text": "niebieski", "score": 10},
        {"text": "zielony", "score": 0},
      ],
    },
    {
      "qst1": "Ulubiony owoc?",
      "answers": [
        {"text": "gruszka", "score": 0},
        {"text": "jabłko", "score": 0},
        {"text": "banan", "score": 10},
      ]
    },
    {
      "qst1": "Ulubiona książka?",
      "answers": [
        {"text": "Folwark Zwierzęcy", "score": 10},
        {"text": "Solaris", "score": 0},
        {"text": "Grey", "score": -10},
      ]
    },
  ];
  var _qstIdx = 0;
  var _totalScore = 0;

  void _answerQ(int score) {
    // var aBool=true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _qstIdx = _qstIdx + 1;
    });

    print(_qstIdx);
    if (_qstIdx < _qst.length) {
      print("lol");
    } else {
      print("the end");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Udemy First App"),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.red, Colors.blue])),
            ),
          ),
          body: _qstIdx < _qst.length
              ? Quiz(
                  answerQuestion: _answerQ,
                  qstIdx: _qstIdx,
                  questions: _qst,
                )
              : Result(_totalScore)),
    );
  }
}
