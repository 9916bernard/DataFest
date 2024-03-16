import 'package:datafest/tabs/search/widgets/question_button_widget.dart';
import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FAQQuestionButton(
          question: 'How to search for books?',
          answer: 'Use the search tab to find books by title, author, or ISBN.',
        ),
        FAQQuestionButton(
          question: 'Can I find course materials here?',
          answer:
              'Yes, use the course search to find specific course materials.',
        ),
        FAQQuestionButton(
          question: 'Are there study groups available?',
          answer: 'Study groups can be found under the community tab.',
        ),
      ],
    );
  }
}
