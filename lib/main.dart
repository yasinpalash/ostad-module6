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
          child: ListView(

            children: [

              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-6/355876944_3602582819964525_6560166743324772717_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGfAlhVH9-2huKtu_JKBz_4u_-LZryla8K7_4tmvKVrwubX28C4Vx2qe_gGTcP6y-Env0CZk1OdNRlWogZ9N4OD&_nc_ohc=keM2Oig0c1cAX_yID7K&_nc_ht=scontent.fdac24-4.fna&oh=00_AfD_zllpbaq113akaeTL54zu5yuKQf6SAA00prMcg3Md8A&oe=650F3085'),
                ),
                trailing: Icon(Icons.accessibility_sharp,color: Colors.purple,),
                title:Text( 'Yasin Mia Palsh'),
                subtitle: Text('yasin@gmail.com'),
              ),
              Divider(height: 5,
              thickness: 2,
                color: Colors.cyan,

              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-6/355876944_3602582819964525_6560166743324772717_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGfAlhVH9-2huKtu_JKBz_4u_-LZryla8K7_4tmvKVrwubX28C4Vx2qe_gGTcP6y-Env0CZk1OdNRlWogZ9N4OD&_nc_ohc=keM2Oig0c1cAX_yID7K&_nc_ht=scontent.fdac24-4.fna&oh=00_AfD_zllpbaq113akaeTL54zu5yuKQf6SAA00prMcg3Md8A&oe=650F3085'),
                ),
                trailing: Icon(Icons.accessibility_sharp,color: Colors.purple,),
                title:Text( 'Yasin Mia Palsh'),
                subtitle: Text('yasin@gmail.com'),
              ),

              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
              Text('yasin'),
            ],
          ),
        ),
      ),
    );
  }
}
