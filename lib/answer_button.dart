import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answertext, required this.onTap});
  final String answertext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: onTap, 
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      backgroundColor: Color.fromARGB(248, 80, 134, 136),
      foregroundColor: Color.fromARGB(255, 185, 54, 54),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )
    ),
    child: Text(
      answertext,
      textAlign: TextAlign.center
      )
    );
  }
}
