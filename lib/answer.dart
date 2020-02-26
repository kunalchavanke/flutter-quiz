import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function handlePress;
  Answer(this.answer, this.handlePress);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: handlePress,
      ),
    );
  }
}
