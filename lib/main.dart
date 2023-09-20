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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('Hit');
                },
                child: Text(
                  'Yasin',
                  style: TextStyle(fontSize: 50),
                ),
              ),

              InkWell(
                onTap: (){

                },

                child: Text(
                  'Yasin',
                  style: TextStyle(fontSize: 50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
