import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: CounterApp(),
    ),
  );
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        backgroundColor: Color(0xff85a1b7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Text(
              "$count",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decrement,
                  child: const Text("theesey"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: reset,
                  child: const Text("malli modhalu"),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: increment,
                  child: const Text("penchu"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
