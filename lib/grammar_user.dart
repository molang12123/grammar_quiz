import 'package:flutter/material.dart';
import 'package:grammar_user/data/question.dart';
import 'package:grammar_user/question_screen.dart';
import 'package:grammar_user/result_screen.dart';
import 'package:grammar_user/start_screen.dart';

class Grammar extends StatefulWidget {
  const Grammar({super.key});
  @override
  State<Grammar> createState() {
    return _GrammarState();
  }
}

class _GrammarState extends State<Grammar> {
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartGrammar() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void exit() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartGrammar,
        onExit: exit,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 136, 218, 44),
                Color.fromARGB(255, 254, 251, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
