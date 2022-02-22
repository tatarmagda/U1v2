import 'package:flutter/material.dart';

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
  int qstIdx = 0;

  void answerQ() {
    setState(() {
      qstIdx = qstIdx + 1;
    });

    print(qstIdx);
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
                Text(
                  qst[qstIdx],
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
                RaisedButton(
                    child: Text(
                      "1",
                    ),
                    color: Colors.blue,
                    onPressed: answerQ,
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
