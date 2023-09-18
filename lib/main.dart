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
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Enter your search term',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
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
                          'https://via.placeholder.com/150',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),

                        SizedBox(height: 8.0),
                        Text('Caption $index'),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 24.0),
              Text(
                "Sample Photos",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: CircleAvatar( // Circular photo
                  radius: 30.0, // Adjust the radius for size
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                ),
                title: Text("Photo 1"),
                subtitle: Text("Subtitle 1"),
              ),
              ListTile(
                leading: CircleAvatar( // Circular photo
                  radius: 30.0, // Adjust the radius for size
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                ),
                title: Text("Photo 2"),
                subtitle: Text("Subtitle 2"),
              ),
              ListTile(
                leading: CircleAvatar( // Circular photo
                  radius: 30.0, // Adjust the radius for size
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                ),
                title: Text("Photo 3"),
                subtitle: Text("Subtitle 3"),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Upload Successful!'),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.cloud_upload),
                    SizedBox(width: 8.0),
                    Text('Upload Photos', style: TextStyle(fontSize: 18.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
