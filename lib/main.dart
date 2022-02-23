import 'package:flutter/material.dart';
import 'package:udemy1_v_2/answer.dart';
import 'package:udemy1_v_2/qst.dart';

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

  void _answerQ() {
    setState(() {
      _qstIdx = _qstIdx + 1;
    });

    print(_qstIdx);
  }

  @override
  Widget build(BuildContext context) {
    var qst = [
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
        body: Container(
          child: Center(
            child: Column(
              children: [
                Question(
                  qst[_qstIdx]["qst1"] as String,
                ),
                ...(qst[_qstIdx]["answers"] as List<String>)
                    .map(
                      (answers) => Answer(_answerQ, answers),
                    )
                    .toList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
