import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grammar_user/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        QuestionIdentifier(questionIndex: itemData['question_index']as int,
         isCorrectAnswer: isCorrectAnswer
         ),
         const SizedBox(
          width: 20,
         ),
         Expanded(child: 
         Column(
          children: [
            Text(
              itemData['question']as String,
              style: GoogleFonts.ubuntu(
                color: Color.fromARGB(255, 222, 230, 221),
                fontWeight:FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              itemData['user_answer']as String,
              style: GoogleFonts.ubuntu(
                color: Color.fromARGB(255, 0, 12, 185),
                fontWeight:FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              itemData['correct_answer']as String,
              style: GoogleFonts.ubuntu(
                color: Color.fromARGB(255, 9, 51, 23),
                fontWeight:FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
         )
        )
      ],
    );
  }
}
