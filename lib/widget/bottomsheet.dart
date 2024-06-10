import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:hello/widget/alert.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NewYork City",
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //   padding: EdgeInsets.all(40),
        //   alignment: Alignment.topCenter,
        //     onPressed: () {
        //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertWidget()
        //       // )
        //       // );
      //   //     },
      //       icon: Icon(Icons.home_filled)),

      //   // actionsIconTheme: IconThemeData(),
      ),
      body: Container(
        color: Color.fromARGB(255, 237, 243, 247),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: true,
                backgroundColor: const Color.fromARGB(255, 128, 241, 132),
               elevation: 0, 
               enableDrag: true,
                  context: context,
                  builder: (BuildContext context) {
                    return ListView(
                      children: const [
                        Card(
                          child: ListTile(
                            title: Text("hello"),
                            subtitle:Text("this is sample",),
                            // shape: CircleBorder(eccentricity: 0.5),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("hello"),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("hello"),
                          ),
                        )
                      ],
                    );
                  });
            },
            child: Text(
              "click here",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                elevation: WidgetStateProperty.all(4)),
            autofocus: true,
          ),
        ),
      
        // transform:Matrix4.rotationZ(12)
      ),
      bottomNavigationBar:BottomAppBar(child: Tab(child: TabBar(tabs:[
        IconButton(onPressed: (){}, icon: Icon(Icons.lock_clock),),
         IconButton(
              onPressed: () {},
              icon: Icon(Icons.lock_clock),
            ),
             IconButton(
              onPressed: () {},
              icon: Icon(Icons.lock_clock),

              
            ),
             IconButton(
              onPressed: () {},
              icon: Icon(Icons.lock_clock),
            ),
      ]),),
      color: Colors.greenAccent,) ,

      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Column(children: [Text("Ashik"),
            Text("Co-founder of Binance")
            ],),
            ),
            Center(child: ListBody(children: [ListTile(leading: Icon(Icons.temple_hindu),
              title: Text("oh my god!"),
            ),
            ListTile(leading:Icon(Icons.work),
            title: Text("go and do your work"),
            ),
            ],
            ),
            ),
            
          ],
        ),
        
      
      ),
      endDrawer:
       Drawer(
        // shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ,
       ),
    );
  }
}
