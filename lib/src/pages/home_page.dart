import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Styles
  final styleText = new TextStyle(fontSize: 20);

  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Number of taps:', style: styleText),
          Text(
            '$counter',
            style: styleText,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Hola Mundo");
          }),
    );
  }
}
