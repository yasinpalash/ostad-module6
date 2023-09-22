import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

///Route
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  MySnakbar(massage ,context){
    return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(massage))
    );

  }

  MyAlertDiolog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Expanded(
              child: AlertDialog(
            title: Text('Alert!!'),
            content: Text('Do you want to delete'),
                actions: [
                  TextButton(onPressed: (){

                    MySnakbar('this is delete',context);
                  }, child: Text('Yes')),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();

                  }, child: Text('No'))
                ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  MyAlertDiolog(context);
                },
                child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
