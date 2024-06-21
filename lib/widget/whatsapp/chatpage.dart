import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;

  const ChatPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 42, 238, 28),
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 20,
        ),
        title: ListTile(
          contentPadding: EdgeInsets.only(bottom: 15, top: 15, left: 0),
          title: Text(
            name,
            style: TextStyle(fontSize: 25),
          ),
          subtitle: Text("Online"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 1),
            padding: EdgeInsets.only(bottom: 0),
            child: Card(
              child: ListTile(
                title: TextField(),
                //  contentPadding: EdgeInsets.all(0),
                leading: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black,
                ),
                trailing:Row(mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.abc), Icon(Icons.abc), Icon(Icons.abc)],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
