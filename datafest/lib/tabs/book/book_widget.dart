import 'package:datafest/tabs/book/chapter_widget.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chapters = [
      {"title": "Getting Started (Don't Skip This Part)", "isButton": false},
      {"title": "First Things First! (Don't Skip This Page)", "isButton": true},
      {"title": "Student Survey (REQUIRED)", "isButton": true},
      {
        "title": "Statistics and Data Science: A Modeling Approach",
        "isButton": false
      },
      {"title": "Statistics and Data Science (Title Page)", "isButton": true},
      {"title": "About CourseKata and Your Data", "isButton": true},
      {"title": "Part I: Exploring Variation", "isButton": false},
      {"title": "Part I: Exploring Variation", "isButton": true},
      {
        "title": "Chapter 1 - Welcome to Statistics: A Modeling Approach",
        "isButton": false
      },
      {"title": "1.1 Welcome to Statistics", "isButton": true},
      {"title": "1.2 What is Understanding?", "isButton": true},
      {"title": "1.3 Doing Statistics with R", "isButton": true},
      {"title": "1.4 Introduction to R Functions", "isButton": true},
      {"title": "1.5 Save Your Work in R Objects", "isButton": true},
      {"title": "1.6 Goals of This Course", "isButton": true},
      {"title": "Chapter 2 - Understanding Data", "isButton": false},
      {"title": "2.1 Starting with a Bunch of Numbers", "isButton": true},
      {"title": "2.2 From Numbers to Data", "isButton": true},
      {"title": "2.3 A Data Frame Example: MindsetMatters", "isButton": true},
      {"title": "2.4 Measurement", "isButton": true},
      {"title": "2.5 Measurement (Continued)", "isButton": true},
      {"title": "2.6 Sampling from a Population", "isButton": true},
      {"title": "2.7 The Structure of Data", "isButton": true},
      {"title": "2.8 Missing Data", "isButton": true},
      {"title": "2.9 Creating and Recoding Variables", "isButton": true},
      {"title": "2.10 Chapter 2 Review Questions", "isButton": true},
      {"title": "2.11 Chapter 2 Review Questions 2", "isButton": true},
      {"title": "Chapter 3 - Examining Distributions", "isButton": false},
      {"title": "3.1 The Concept of Distribution", "isButton": true},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'College / Advanced Statistics with R',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.red[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            final chapter = chapters[index];
            return chapter["isButton"]
                ? Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: ListTile(
                      title: Text(
                        chapter["title"],
                        style: const TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChapterWidget()));
                      },
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      chapter["title"],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
