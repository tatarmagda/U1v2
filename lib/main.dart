import 'package:flutter/material.dart';
import 'package:udemy1_v_2/answer.dart';
import 'package:udemy1_v_2/qst.dart';
import 'package:udemy1_v_2/quiz.dart';

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
  int _qstIdx = 0;
  final qst = const [
    {
      "qst1": "Ulubiony kolor?",
      "answers": ["czerwony", "niebieski", "zielony"],
    },
    {
      "qst1": "Ulubiony owoc?",
      "answers": ["gruszka", "jabłko", "kiwi"]
    },
    {
      "qst1": "Ulubiona książka?",
      "answers": ["Folwark Zwierzęcy", "Solaris", "Tik Tok"]
    },
  ];

  void _answerQ() {
    // var aBool=true;
    // aBool = false;

    setState(() {
      _qstIdx = _qstIdx + 1;
    });

    print(_qstIdx);
    if (_qstIdx < qst.length) {
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
          body: _qstIdx < qst.length
              ? Quiz()
              : Center(
                  child: Text("the end"),
                )),
    );
  }
}
