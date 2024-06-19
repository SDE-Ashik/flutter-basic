import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 205, 38),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.only(right: 4),
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/ashik.jpeg'),
              ),
              title: Text(
                "Ashik",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "I'm busy right now..",
                style: TextStyle(
                  color: Color.fromARGB(255, 62, 58, 58),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.qr_code_2,
                    color: Color.fromARGB(255, 45, 230, 51),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_drop_down_circle,
                    color: Color.fromARGB(255, 45, 230, 51),
                  ),
                ],
              ),
            ),
          ),
          
          Expanded(
              child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.key),
                  title: Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Security notifications,change number"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.lock_open),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Block contacts, disapperaing messages"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.emoji_people),
                  title: Text(
                    "Avatar",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Create , edit, profilephoto"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.chat),
                  title: Text(
                    "Chats",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Theme, wallpapers, chat history"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Message, group & call tones"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.data_saver_off),
                  title: Text(
                    "Storage and data",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Network usage, auto-dowload"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text(
                    "App language",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("English ('device's language)"),
                ),
              ),
              Container(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text(
                    "Help",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Help centre, contact us, privacy policy"),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.people_alt_outlined),
                  title: Text(
                    "Invite a friend",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Also from Meta",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),),
                  Container(
                child: ListTile(
                  leading: Icon(Icons.facebook_outlined),
                  title: Text(
                    "Open Facebook",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
