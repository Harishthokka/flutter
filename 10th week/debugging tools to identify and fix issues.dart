```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Debugging',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF0F5),
      ),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
    debugPrint('Counter value: $counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Debugging'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.bug_report,
              color: Colors.pink,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Counter Value',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
```

  
