import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello/widget/image.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var style1 = const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
      drawer: Drawer(),

      appBar: AppBar(
        title: Text(
          "Hello",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 27, color: Colors.white),
        ),
        bottom: const TabBar(
          tabs: [
            Icon(
              Icons.music_note,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.music_video,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.grade,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.email,
              color: Colors.white,
              size: 30,
              shadows: [
                Shadow(
                    color: Color.fromARGB(255, 230, 13, 13),
                    blurRadius: 40,
                    offset: Offset.infinite),
              ],
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(Color.fromARGB(255, 49, 240, 55))),
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text(
              "click here",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      )),
      // bottomNavigationBar: Tab(child: TabBar(tabs: [Icon(Icons.abc),
      // Icon(Icons.abc), Icon(Icons.abc),
      //       Icon(Icons.abc)
      //     ],),),
    );
  }
}
Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        title: Text(
          "Are You Happy Baby?...",
          style: TextStyle(color: Colors.white),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Center(
                child: Text(
                  "This is demo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Don't give up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 18, 133, 234),
        actions: [
          TextButton(
            onPressed: () {
              // Define what happens when 'Agree' is pressed
              Navigator.push(context, MaterialPageRoute(builder:(context)=> ImageWidget()));
            },
            child: Text("Agree",style: TextStyle(color: Colors.black,fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              BoxShadow(blurRadius: 40,color: Colors.white,blurStyle: BlurStyle.outer)
            ]),),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel",
            style: TextStyle(color: Colors.black,fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              BoxShadow(blurRadius: 40,color: Colors.white,blurStyle: BlurStyle.outer)
            ]),),
          ),
        ],
        elevation: 24, // Standard elevation for dialogs
        shadowColor: Color.fromARGB(255, 248, 248, 245),
      );
    },
  );


// Future<void> _showMyDialog(BuildContext context) async {
 
//   return showDialog(
//       context: context,
//       builder: (BuildContext context) {
      
//         return const AlertDialog(
//           scrollable: true,
//           title: Text(
//             "Are You Happy Baby?...",
//             style: TextStyle(color: Colors.white),
//           ),
//           // content: Column(children: [Text("happy be happy")],),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: [
//                 Center(
//                   child: Text(
//                     "This is demo",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Center(
//                   child: Text(
//                     "Don't give up",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           backgroundColor: Color.fromARGB(255, 18, 133, 234),
//           actions: [TextButton(onPressed: (){}, child: child)],
//           // actions: [
//           //   // // TextButton(
//           //   // //   onPressed: () {
//           //   // //     // Define what happens when 'Agree' is pressed
//           //   // //     Navigator.pop(context);
//           //   // //   },
//           //   //   // child: Text("Agree"),
//           //   // // ),
//           //   // TextButton(
//           //   //   onPressed: () {
//           //   //     Navigator.pop(context);
//           //   //   },
//           //   //   child: Text("Cancel"),
//           //   // ),
//           // ],
//           elevation: 400,
//           shadowColor: Color.fromARGB(255, 248, 248, 245),
//         );
//       });
}
