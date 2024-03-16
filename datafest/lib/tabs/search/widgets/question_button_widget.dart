import 'package:flutter/material.dart';

class FAQQuestionButton extends StatelessWidget {
  final String question;
  final String answer;

  const FAQQuestionButton(
      {Key? key, required this.question, required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: Implement navigation or functionality
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 2.0, top: 2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[400],
                fontSize: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
