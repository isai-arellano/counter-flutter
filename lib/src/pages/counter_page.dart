import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _styleText = new TextStyle(fontSize: 20);

  int _counter = 0;
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
          Text('Number of taps:', style: _styleText),
          Text(
            '$_counter',
            style: _styleText,
          ),
        ],
      )),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _resetCounter),
        Expanded(child: SizedBox(width: 5)),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _substractCounter),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _addCounter),
      ],
    );
  }

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }

  void _substractCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
}
