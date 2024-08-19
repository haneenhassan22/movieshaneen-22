import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual data count
        itemBuilder: (context, index) {
          return PostCard(
            username: 'User $index',
            postTime: '2 hrs ago', // Replace with actual timestamp
            postText: 'This is a sample post from user $index. Hello Flutter!',
            imageUrl:
                'https://via.placeholder.com/150', // Replace with actual image URL
          );
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String postTime;
  final String postText;
  final String imageUrl;

  PostCard({
    required this.username,
    required this.postTime,
    required this.postText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20,
              child: Text(
                username.substring(0, 1),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            title: Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(postTime),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(postText),
          ),
          imageUrl.isNotEmpty
              ? Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                )
              : SizedBox.shrink(),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.thumb_up),
                label: Text('Like'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.comment),
                label: Text('Comment'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.share),
                label: Text('Share'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
