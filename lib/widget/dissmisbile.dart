import 'package:flutter/material.dart';
import 'package:hello/widget/listview1.dart';

class DissmibileWidget extends StatefulWidget {
  const DissmibileWidget({super.key});

  @override
  State<DissmibileWidget> createState() => _DissmibileWidgetState();
}

class _DissmibileWidgetState extends State<DissmibileWidget> {
  List<String> fruits = ["APPLE", "ORANGE", "STRAWBERRY", "BLUEBERRY"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage()));
          },
          icon: Icon(Icons.add_comment),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              key: Key(fruit),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
            );
            // return Dismissible(

            //   key: Key(fruit),
            //   // onDismissed: (direction) {
            //   //   if (direction == DismissDirection.startToEnd) {
            //   //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(fruits[index]),backgroundColor: Colors.purple, ));

            //   //   }
            //   //   else{

            //   //   }
            //   // },
            //   child: Card(
            //     child: ListTile(
            //       title: Text(fruits[index]),
            //     ),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
