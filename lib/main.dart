import 'package:flutter/material.dart';

void main() {
  runApp(ClassTwo());
}

class ClassTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home"),
        ),
        body:Column(children: [


        ],),
      ),
    );
  }
}
