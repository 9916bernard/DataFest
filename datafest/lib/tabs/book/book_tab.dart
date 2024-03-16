import 'package:flutter/material.dart';

class BookTab extends StatefulWidget {
  @override
  _BookTabState createState() => _BookTabState();
}

class _BookTabState extends State<BookTab> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> books = [
      {
        'title': 'High School / Advanced Statistics and Data Science I',
        'code': 'ABC'
      },
      {'title': 'High School / Statistics and Data Science I', 'code': 'AB'},
      {'title': 'High School / Statistics and Data Science II', 'code': 'XCD'},
      {'title': 'High School / Algebra + Data Science', 'code': 'G'},
      {'title': 'College / Introductory Statistics with R', 'code': 'ABC'},
      {'title': 'College / Advanced Statistics with R', 'code': 'ABCD'},
      {'title': 'College / Accelerated Statistics with R', 'code': 'XCD'},
      {'title': 'CKHub: Jupyter made easy', 'code': ''},
    ];

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16.0), // Text Color
              textStyle: TextStyle(fontSize: 10.0),
            ),
            onPressed: () {
              // TODO: Add your onPressed logic here
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  books[index]['title']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                if (books[index]['code']!.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    color: Colors.lightBlue,
                    child: Text(
                      books[index]['code']!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
