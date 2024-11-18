import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;  // Variable to hold the counter value

  // Method to increase the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Method to decrease the counter
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the column
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter', // Display the current counter value
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Increase button
                IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 40,
                  onPressed: _incrementCounter,
                ),
                // Decrease button
                IconButton(
                  icon: Icon(Icons.remove),
                  iconSize: 40,
                  onPressed: _decrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
