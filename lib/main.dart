import 'package:flutter/material.dart';
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
      "Ulubiony kolor?",
      "Twoje imię?",
    ];
    return MaterialApp(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Question(
                  qst[_qstIdx],
                ),
                RaisedButton(
                    child: Text(
                      "1",
                    ),
                    color: Colors.blue,
                    onPressed: _answerQ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0))),
                RaisedButton(
                  child: Text("2"),
                  color: Colors.brown[600],
                  shape: const CircleBorder(),
                  onPressed: () => print("Answer this"),
                ),
                RaisedButton(
                  child: Text("3"),
                  color: Colors.red[600],
                  onPressed: () => print("nope, will be nope"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
