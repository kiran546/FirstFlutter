import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

// void main => runApp(MyApp())
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  build(BuildContext content) {
    var questions = [
      'what is your favourite color?',
      'what is your favourite game ?',
       'what is your favourite food ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my first App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer2'),
            onPressed: () => print('answer 2 is chosen'),
          ),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: () {
              print('Answer 3 is chosen');
            },
          ),
        ]),
      ),
    );
  }
}
