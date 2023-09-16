import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My Shopping List"),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Add cart functionality here
              },
            ),
          ],
        ),
        body: ShoppingList(),
      ),
    );
  }
}
class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text("Apples"),
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text("Milk"),
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text("Eggs"),
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text("Bread"),
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text("Bananas"),
        ),
      ],
    );
  }
}
