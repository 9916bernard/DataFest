import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChapterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '1.2 What Is Understanding?',
          style: TextStyle(fontSize: 20), // Make the AppBar title smaller
        ),
        backgroundColor: Colors.red[200],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Most of the math classes you have taken before focus on solving problems, not on understanding. Generally, in math courses you get introduced to a type of problem (e.g., a simple algebra problem), and then you are told the steps to solve the problem...',
                style: TextStyle(fontSize: 16),
              ),
              // ... include all the text sections here
              const SizedBox(height: 20),
              const Text(
                'Understanding Is a Skill That Can Be Practiced',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'Although we like to think that understanding is different from skills such as playing the piano, in many ways it is the same. Understanding, like many skills, is something that you can increase through practice. But, what you practice looks different from learning to play a musical instrument. Understanding concepts such as the ones taught in this course requires you to practice thinking. What that usually means is practicing making connections. For example, you need to take an idea you learn about in this course and practice thinking about how it applies to new situations, and how it connects with other related ideas. This is what you need to do to understand.',
                style: TextStyle(fontSize: 16),
              ),
              // ... include all the text sections here
              const SizedBox(height: 20),
              const Text(
                'Confusion Is Part of the Learning Process',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'Just like a musician starts out playing badly and gradually learns to play better, understanding works the same way. When you start trying to understand something that is hard to understand, you will initially be confused. This doesn’t mean you are stupid, it just means you don’t understand yet. Because confusion is part of learning, we should say something about how to get less confused. First, know that you are not alone. Second, voicing your confusion and asking clarifying questions outloud can help you get unstuck. It can often help you understand just by hearing your peers and the instructor share their perspectives on a problem. Using the experiences of many generations of students as a reliable guide, we know that your understanding will grow and we will help you develop the knowledge you need to be successful in this class.',
                style: TextStyle(fontSize: 16),
              ),
              // ... include all the text sections here
              const SizedBox(height: 20),
              const Text(
                'Understanding Takes Time',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'These first two ideas naturally imply a third idea: understanding takes time. The concepts that underlie statistics are not things you understand in an instant, but things that will continue to develop over weeks, months, and even years. We all know that learning skills takes time. No one expects to become an expert tennis player all at once—it can take years of practice. But many people think that understanding is something that happens in an instant—Eureka! As it turns out, that’s not true, at least for most things. So enjoy the process, be patient, don’t hurry.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Learning by Doing',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'With all this talk about understanding, you may think this course is going to be just a big discussion of ideas. It’s not. Because at the same time you are learning about the core concepts of statistics, you also will be learning how to analyze data. The reason for understanding statistical concepts in the first place is to guide you as you learn to make sense out of variation in data. As you work through the course, therefore, you will be constantly putting your knowledge to use: organizing, analyzing, and interpreting data.',
                style: TextStyle(fontSize: 16),
              ),
              // ... include all the text sections here
              const SizedBox(height: 20),
              const Text(
                'How This Course Supports Understanding',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'In this course you will be asked to do things on every page: analyze data and answer questions. You may feel like you are constantly being “tested.” While in a sense this is true, it’s important for you to know that doing things is often the best way to learn things. So, answering a question is not just so your teacher knows how you are doing. It is also an important learning opportunity—a part of the learning design. The main reason for all the questions you will answer as you work through the course is just to help you learn more. Don’t worry if you get questions wrong on the first try. Use the questions to help you figure things out. Working hard and thinking through these questions will result in learning, and that learning will lead to higher grades.',
                style: TextStyle(fontSize: 16),
              ),
              // ... include all the text sections here
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100, // Fixed height for square button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // No rounded edges
                          ),
                        ),
                        onPressed: () {
                          // Action when the button is tapped
                        },
                        child: const Text(
                          '1.1 Welcome to Statistics',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Spacing between buttons
                  Expanded(
                    child: Container(
                      height: 100, // Fixed height for square button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // No rounded edges
                          ),
                        ),
                        onPressed: () {
                          // Action when the button is tapped
                        },
                        child: const Text(
                          '1.3 Doing Statistics with R',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              SizedBox(
                height: 2,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              // Any other widgets can be included here as well
              Row(
                children: [
                  Image.asset(
                    'assets/kata_icon.png', // Make sure this asset is in the correct directory
                    fit: BoxFit.contain,
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            fontSize: 25), // Directly set the font size
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Course',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Kata',
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
