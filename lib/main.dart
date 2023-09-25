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
   HomeScreen({super.key});

  var MyItem=[
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Yasin",},
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Rakib",},
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Rasel",},
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Rab",},
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Rashed",},
    {"img":"https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80","titel":"Imtiaz",},

  ];

  MySnakbar(context,sms){

    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
          duration:Duration(seconds: 1) ,
          content: Text(sms))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body:ListView.builder(
          itemCount: MyItem.length,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){

                MySnakbar(context, MyItem[index]['titel']);


              },
              child: Container(

                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 400,
                child: Image.network(MyItem[index]['img']!,),

              ),
            );
          }

      ),
    );
  }
}
