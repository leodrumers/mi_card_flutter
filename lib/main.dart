import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nDonuts = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My card'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text(
          'You\'ve eaten $nDonuts donuts',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[400],
        child: Icon(
          Icons.add,
        ),
        onPressed: () => setState(() {
          nDonuts++;
        }),
      ),
    );
  }
}
