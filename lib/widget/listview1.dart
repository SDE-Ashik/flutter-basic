import 'package:flutter/material.dart';
import 'package:hello/widget/grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List fruts = ["apple", "orange", "banana", "cherry"];
    Map fruits_p = {
      "names": ["apple", "cherry", "orange", "blueberry"],
      "person": ["arun", "amal", "ravi", "sonu"]
    };
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 147, 240),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              Navigator.push
              (context, MaterialPageRoute(builder: (context) => GridWidget()));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.white,
              )),
        ],
        elevation: 0,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 3),
          child: ListView.builder(
            itemCount: fruts.length,
            itemBuilder: (context, index) {
              return Card(
                shadowColor: Colors.blueGrey,
                elevation: 4,
                color: const Color.fromARGB(255, 97, 174, 236),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Text(
                    fruits_p['names'][index],
                    style: TextStyle(
                        color: const Color.fromARGB(255, 247, 247, 247)),
                  ),
                  subtitle: Text(
                    fruits_p["person"][index],
                    style: TextStyle(color: Color.fromARGB(255, 237, 232, 232)),
                  ),
                  leading: Icon(Icons.person_2),
                  iconColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  contentPadding: EdgeInsets.all(4),
                  // focusColor: ,
                  enabled: true,
                  hoverColor: Colors.yellow,
                  onTap: () {
                    print(fruits_p['names'][index]);
                  },
                ),
              );
            },
          )),
    );
  }
}
