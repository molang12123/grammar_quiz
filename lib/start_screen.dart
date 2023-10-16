import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startLesson, {super.key});

  final void Function() startLesson;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/grammar.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
              style: GoogleFonts.ubuntu(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            'Learn Grammar the fun way!'
            ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startLesson,
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('start Lessons!'),
          ),
        ],
      ) 
    );
  }
}
