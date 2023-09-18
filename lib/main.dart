import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Photo Gallery"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Welcome to our Photo Gallery!",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Search for photos..',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0, // Set the border width
                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0, // Set the border width
                    ),

                  ),
                ),
              ),

              const SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  List<String> imageUrls = [
                    'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    'https://images.pexels.com/photos/1643457/pexels-photo-1643457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    'https://images.pexels.com/photos/1870376/pexels-photo-1870376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    'https://images.pexels.com/photos/4017827/pexels-photo-4017827.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    'https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    'https://images.pexels.com/photos/1444321/pexels-photo-1444321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ];

                  return GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Image $index clicked!'),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          (imageUrls[index]),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        Text('Caption $index'),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 24.0),
              const ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://images.pexels.com/photos/1472999/pexels-photo-1472999.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text("Photo 1"),
                subtitle: Text("Info ...for 1"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://images.pexels.com/photos/735423/pexels-photo-735423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text("Photo 2"),
                subtitle: Text("Info ...for 2"),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://images.pexels.com/photos/1183434/pexels-photo-1183434.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                title: Text("Photo 3"),
                subtitle: Text("Info ...for 3"),
              ),
              const SizedBox(height: 16.0),
              FloatingActionButton(
                // Circular "Upload" button
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Photos Uploaded Successfully!'),
                    ),
                  );
                },
                child: const Icon(Icons.upload),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
