import 'package:flutter/material.dart';
import 'package:flutter_course/quiz.dart';
import 'package:flutter_course/result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _questionIndex = 0;
  var _totalScore =  0;
  var _questions = [
    {
      'questionText': 'Qusetion 1',
      'answers': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
        {'text': 'Answer 3', 'score': 30},
        {'text': 'Answer 4', 'score': 40},
      ]
    },
    {
      'questionText': 'Qusetion 2',
      'answers': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
        {'text': 'Answer 3', 'score': 30},
      ]
    },
    {
      'questionText': 'Qusetion 3',
      'answers': [
        {'text': 'Answer 1', 'score': 10},
        {'text': 'Answer 2', 'score': 20},
      ]
    },
  ];
  _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore  += score;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _questionIndex,
                _answerQuestion,
              )
            : Result(_totalScore),
      ),
    );
  }
}
