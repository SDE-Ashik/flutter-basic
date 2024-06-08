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
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        backgroundColor: Colors.deepPurple,
        title: Text("hello",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: Colors.deepPurple,
    
      child: ListView(children: [
        DrawerHeader(
        
          child: Container(
            child: Row(
            
            
            
            children: [
              
              CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://previews.123rf.com/images/dolgachov/dolgachov1603/dolgachov160306114/54057828-business-people-and-portrait-concept-smiling-businessman-face-or-portrait.jpg"),),
              SizedBox(width: 10,),
             Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
              [Text("Ashik",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),Text("Software Developer",
                          style: TextStyle(color: Colors.white),
                        )],)
            ],
                    ),
          ),),
          Card(child: ListTile(title: Text("Home",
          style: TextStyle(color: Colors.white),),leading: Icon(Icons.home,color: Colors.white,),
          ),
          color: const Color.fromARGB(255, 143, 89, 238),),
    
        
Card(
              child: ListTile(
                title: Text(
                  "Sent",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
              color: const Color.fromARGB(255, 143, 89, 238),
            ),
        
Card(
              child: ListTile(
                title: Text(
                  "location",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              color: const Color.fromARGB(255, 143, 89, 238),
            ),
        
Card(
              child: ListTile(
                title: Text(
                  "Photo",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
              ),
              color: const Color.fromARGB(255, 143, 89, 238),
            ),
        

         
          Card(
              child: ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
              color: const Color.fromARGB(255, 143, 89, 238),
            ),
        

        


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
