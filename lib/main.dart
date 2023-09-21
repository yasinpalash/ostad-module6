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
        body: Scrollbar(
          thickness: 20,
          child: GridView(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              Icon(Icons.confirmation_number_sharp),
              Icon(Icons.confirmation_number_sharp),


            ],
          ),
        ),
      ),
    );
  }
}
