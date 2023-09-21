import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: HomeScreen(),

    );
  }

  

}


class HomeScreen extends StatelessWidget {

  List<String> Students=[
    'Yasin',
    'polASH',
    'Yasin',
    'polASH',
    'Yasin',
    'polASH',
    'Yasin',
    'polASH',



  ];
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),

      body: Scrollbar(
        thickness: 20,
        radius: Radius.circular(15),
        child:ListView.separated(
          itemCount: Students.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(Students[index]),
            );
          },
          separatorBuilder: (context,index){
            return Divider();
          },
        ),
      ),
    );
  }



}
