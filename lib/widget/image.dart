import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const white = Colors.white;
    const black = Colors.black;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Image kiddos",
          style: TextStyle(
              color: white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: black,
      ),
      body: Center(
          child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(blurRadius:30,
          blurStyle: BlurStyle.outer,spreadRadius: 5,

          color: black )
        ],
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/447/169/141/tv-show-ben-10-ben-tennyson-diamondhead-ben-10-wallpaper-preview.jpg"),fit:BoxFit.cover)),
       
      ),
      ),
      drawer: Drawer(
        backgroundColor: black,
        child: ListView(
          children: const [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/e/ec/Larry_Page_in_the_European_Parliament%2C_17.06.2009_%28cropped%29.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Jack Willi",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                      Text(
                        "CEO of Google",
                        style: TextStyle(
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              leading: Icon(Icons.home),
              iconColor: white,
            ),
            ListTile(
              title: Text(
                "Message",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              leading: Icon(Icons.message),
              iconColor: white,
            ),
            ListTile(
              title: Text(
                "Files",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              leading: Icon(Icons.file_copy_sharp),
              iconColor: white,
            ),
            ListTile(
              title: Text(
                "Share",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              leading: Icon(Icons.share),
              iconColor: white,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              leading: Icon(Icons.logout),
              iconColor: white,
            ),
          ],
        ),
      ),
    );
  }
}
