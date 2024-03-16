import 'package:datafest/home.dart';
import 'package:datafest/tabs/search/widgets/faq_section_widget.dart';
import 'package:datafest/tabs/search/widgets/icon_label_button_widget.dart';
import 'package:datafest/tabs/search/widgets/question_button_widget.dart';
import 'package:datafest/tabs/search/widgets/search_field_widget.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the start
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/search_image.png', // Replace with your asset
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SearchField(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Search by',
              style: TextStyle(
                fontSize: 16.0, // Made size smaller
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconLabelButton(
                  iconData: Icons.school,
                  label: 'Institution',
                ),
                IconLabelButton(
                  iconData: Icons.auto_stories, // Changed icon for 'Textbook'
                  label: 'Textbook',
                ),
                IconLabelButton(
                  iconData: Icons.person_outline,
                  label: 'Professor',
                ),
                IconLabelButton(
                  iconData:
                      Icons.cast_for_education, // Changed icon for 'Course'
                  label: 'Course',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text(
              'Frequently Asked',
              style: TextStyle(
                fontSize: 16.0, // Made size smaller
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          FAQSection(), // New FAQ section
          Align(
            alignment: Alignment.centerRight, // Aligns the button to the right
            child: TextButton.icon(
              onPressed: () {
                // TODO: Implement action for 'More questions'
              },
              icon: Icon(Icons.arrow_forward, color: Colors.blue[300]),
              label: Text(
                'More questions',
                style: TextStyle(color: Colors.blue[300]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
