import 'package:flutter/material.dart';
import 'package:udemy1_v_2/Screens/quiz_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "How well you know me?",
            style: TextStyle(fontSize: 20),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QuizPage()));
            },
            icon: Icon(Icons.start),
            label: Text("Let's get started!"),
          ),
        ],
      ),
    ));
  }
}
