import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffdee7e8),
        appBar: AppBar(
          title: const Text('Student Profile Card'),
          backgroundColor: const Color(0xff2f00ff),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "android/asserts/images/harish.png",
                width: 90,
                height: 90,
              ),
              const SizedBox(width: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thokka Harish",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Roll No: 25pa5a0534",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Branch: CSE",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 260,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(width: 15),
                        Text(
                          "6547635514",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 15),
                        Text(
                          "harishthokka@gmail.com",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
