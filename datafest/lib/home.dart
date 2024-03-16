import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Row(
          children: [
            Image.asset(
              'assets/kata_icon.png', // Replace with your icon asset
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.title),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Implement profile action
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Find Your Course Materials',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            SizedBox(height: 20),
            SearchField(title: 'Search for Institution'),
            SizedBox(height: 20),
            SearchField(title: 'Search for Course'),
            SizedBox(height: 20),
            SearchField(title: 'Search for Textbook'),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final String title;

  const SearchField({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(),
        ),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
