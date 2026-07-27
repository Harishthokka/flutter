import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchExample(),
    ),
  );
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0dee5), // Light blue background

      appBar: AppBar(
        title: const Text("Switch Terminology"),
        centerTitle: true,
        backgroundColor: Color(0xff8192f4),
      ),

      body: Center(
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  isOn ? "Enable" : "Disable",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: isOn ? Colors.green : Colors.red,
                  ),
                ),
                const SizedBox(height: 20),
                Switch(
                  value: isOn,
                  activeColor: Colors.white,
                  activeTrackColor: Color(0xff06810a),
                  inactiveThumbColor: Color(0xffea0f0f),
                  inactiveTrackColor: Color(0xfffeeded),
                  onChanged: (value) {
                    setState(() {
                      isOn = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
