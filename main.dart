import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Gradient Button Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              GradientButton(text: "Hello 1", start: Colors.blue, end: Colors.red),
              SizedBox(height: 10),
              GradientButton(text: "Hello 2", start: Colors.green, end: Colors.yellow),
              SizedBox(height: 10),
              GradientButton(text: "Hello 3", start: Colors.purple, end: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}


class GradientButton extends StatelessWidget {
  final String text;
  final Color start;
  final Color end;

  const GradientButton({
    super.key,
    required this.text,
    required this.start,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
