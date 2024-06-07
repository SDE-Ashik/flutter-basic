import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("hello"),
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: Colors.deepPurple,
      child: ListView(children: [
        DrawerHeader(padding: EdgeInsets.only(left: 40,right: 40),
        margin: EdgeInsets.all(6),
          child: Row(
          
          
          
          children: [
            CircleAvatar(),
           Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
            [Text("hi"),Text("ashik")],)
          ],
        ),)
      ],),
      
      ),
      body: Container(
        child: Center(
          child: Text("Im here"),
        ),
      ),
    );
  }
}
