import 'package:flutter/material.dart';
import 'package:udemy1_v_2/Widgets/quiz.dart';
import 'package:udemy1_v_2/Widgets/result.dart';
import 'package:udemy1_v_2/Widgets/result.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  final _qst = const [
    {
      "qst1": "My favourite color?",
      "answers": [
        {"text": "red", "score": 0},
        {"text": "blue", "score": 10},
        {"text": "green", "score": 0},
        {"text": "yellow", "score": 0},
      ],
    },
    {
      "qst1": "My favourite fruit?",
      "answers": [
        {"text": "pear", "score": 0},
        {"text": "apple", "score": 10},
        {"text": "banan", "score": 0},
        {"text": "pineaplle", "score": 0},
      ]
    },
    {
      "qst1": "My favourite book?",
      "answers": [
        {"text": "Animal Farm", "score": 0},
        {"text": "Solaris", "score": 0},
        {"text": "50 shades of grey", "score": -10},
        {"text": "The Chemistry of Death", "score": 10},
      ]
    },
    {
      "qst1": "My favourite song?",
      "answers": [
        {"text": "Jolene, Dolly Partion ", "score": 0},
        {"text": "Pump It Up!, Danzel", "score": 0},
        {"text": "Przez twe oczy zielone, Zenek Martyniuk", "score": -10},
        {"text": "Seven Nation Army, The White Stripes", "score": 10},
      ]
    },
  ];
  var _qstIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qstIdx = 0;
      _totalScore = 0;
    });
  }

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
              : Result(_totalScore, _resetQuiz),
        ));
  }
}
