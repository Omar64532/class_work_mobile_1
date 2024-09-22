import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter & Image Toggle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterImageToggleScreen(),
    );
  }
}

class CounterImageToggleScreen extends StatefulWidget {
  const CounterImageToggleScreen({super.key});

  @override
  _CounterImageToggleScreenState createState() => _CounterImageToggleScreenState();
}

class _CounterImageToggleScreenState extends State<CounterImageToggleScreen> {
  // Counter state for Task 1
  int _counter = 0;

  // Image toggle state for Task 2
  bool _isFirstImage = true;

  // Method to increment the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //  Toggle the image
  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter & Image Toggle App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Task 1: Increment
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment Counter'),
            ),
            const SizedBox(height: 40), // Spacing between sections

            // Task 2: Image and toggle button
            Image.asset(
              _isFirstImage ? 'assets/image1.jpeg' : 'assets/image2.jpeg',
              height: 200,
              width: 200,
            ),
            ElevatedButton(
              onPressed: _toggleImage,
              child: const Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
