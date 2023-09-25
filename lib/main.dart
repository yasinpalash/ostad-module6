import 'package:flutter/material.dart';
import 'package:module6/Fragment/Homefragment.dart';
import 'package:module6/Fragment/searchfragment.dart';

import 'Fragment/Callfragment.dart';

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

  var MyItem = [
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Yasin",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Rakib",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Rasel",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Rab",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Rashed",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "titel": "Imtiaz",
    },
  ];

  MySnakbar(context, sms) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(duration: Duration(seconds: 1), content: Text(sms)));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab bar'),
            backgroundColor: Colors.teal,
            bottom: TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Call',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.videogame_asset_off_sharp),
                text: 'Games',
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: 'Camera',
              ),
              Tab(
                icon: Icon(Icons.comment_bank),
                text: 'Comment',
              ),
              Tab(
                icon: Icon(Icons.language),
                text: 'language',
              ),
            ]),
          ),
          body: TabBarView(
            children: [

              HomeFragment(),
              SearchFragment(),
              CallFragment()
            ],
          ),
        ));
  }
}
