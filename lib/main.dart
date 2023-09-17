import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen() ,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)

              ),

                onLongPress: (){
                  print('delete');
                },
                onPressed: (){
              print('U mail sent');
            }, child:Text("Send mail") ),
            TextButton(
                style: TextButton.styleFrom(
                  
                ),
                onPressed: (){}, child:
            Text('Yasin')

            ),
            IconButton(onPressed: (){}, icon:Icon(Icons.add) ),
            OutlinedButton(onPressed: (){}, child: Text('Erooooooo')),
            const TextField(
              style: TextStyle(color: Colors.red),

              decoration: InputDecoration(


                fillColor: Colors.cyanAccent,
                filled: true,
                hintText: 'rwgrh',
                hintStyle: TextStyle(color: Colors.amberAccent),
                suffixIcon: Icon(Icons.email_outlined)


              ),

            )

          ],
        ),
      ),

    );
  }
}

