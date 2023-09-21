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
          thickness: 40,
           radius: Radius.circular(30),

           child:
            ListView.builder(
              itemCount: 50,

              itemBuilder: (BuildContext context, int index) {


              return ListTile(
                title: Text('item list $index'),
              );
            },

            )
          // GridView.builder(
          //   itemCount: 5,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2),
          //   itemBuilder: (BuildContext context, int index) {
          //     return Column(
          //       children: [
          //         Text(index.toString()),
          //         const Icon(Icons.confirmation_number_sharp),
          //       ],
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
