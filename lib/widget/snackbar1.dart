import 'package:flutter/material.dart';
import 'package:hello/widget/listview1.dart';

class StckbarWidget extends StatelessWidget {
  const StckbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 80, 99, 173),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.exit_to_app),
        ),
        title: Text(
          "hello",
          style: TextStyle(
            color: const Color.fromARGB(255, 242, 246, 242),
          ),
        ),
        centerTitle: true,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        
        height: 300,
        width: 300,
        child: Center(
          child: ElevatedButton(
            
            onPressed: () {
              final snackbar = SnackBar(
                backgroundColor: Colors.red,
                duration: Duration(milliseconds: 5000),
                behavior: SnackBarBehavior.floating,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(43)),
                action: SnackBarAction(
                  label: "home",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  textColor: Colors.green,
                ),
                content: Text("something went to wrong"),
              );
          
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Center(
              child: Text("click here"),
            ),
            style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.amber),
                backgroundColor: WidgetStateProperty.all(Colors.black)),
          ),
        ),
      ),
    );
  }
}
