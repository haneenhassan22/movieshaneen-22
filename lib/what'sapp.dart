import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        hintColor: Color(0xFF25D366),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WhatsAppHomePage(),
    );
  }
}

class WhatsAppHomePage extends StatefulWidget {
  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual data count
        itemBuilder: (context, index) {
          return ChatTile(
            senderName: 'User $index',
            message: 'This is a message from user $index',
            time: '10:00 AM', // Replace with actual timestamp
            unreadCount: index % 3 == 0 ? 2 : 0, // Example unread count
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).hintColor,
        child: Icon(Icons.message),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String senderName;
  final String message;
  final String time;
  final int unreadCount;

  ChatTile({
    required this.senderName,
    required this.message,
    required this.time,
    this.unreadCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).hintColor,
        child: Text(
          senderName.substring(0, 1),
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        senderName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(time),
        ],
      ),
      trailing: unreadCount > 0
          ? CircleAvatar(
              backgroundColor: Theme.of(context).hintColor,
              radius: 10,
              child: Text(
                unreadCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          : null,
      onTap: () {
        // Navigate to chat screen
      },
    );
  }
}
