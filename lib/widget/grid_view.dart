import 'package:flutter/material.dart';
import 'package:hello/widget/listview1.dart';
import 'package:hello/widget/snackbar1.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    List fruits = ["apple", "banana", "orange", "blueberry","strawberry"];
    Map fruits_p = {
      "name":["Ashik","devu","sujay","raman","punnoose"],
      "fruits":fruits
    };
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 217, 156),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StckbarWidget()));
            },
            icon: Icon(Icons.backpack)),
        title: Text(
          "Hello",
          style: TextStyle(
              color: Colors.white, backgroundColor: Colors.deepOrange),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color.fromARGB(255, 210, 117, 66),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                child: GridTile(
                  
                  child: Text(fruits[index]),
                ),
              );
            }),
      ),
    );
  }
}
