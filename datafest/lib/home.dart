import 'package:datafest/tabs/book/book_tab.dart';
import 'package:datafest/tabs/profile/profile_tab.dart';
import 'package:datafest/tabs/search/search_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title})
      : super(key: key); // 'const' removed here

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // 'const' removed here
    SearchTab(),
    BookTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Row(
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
                  style: TextStyle(fontSize: 25), // Directly set the font size
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
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // 'const' can remain here because BottomNavigationBarItem has a const constructor
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
