import 'package:flutter/material.dart';
import 'package:hello/widget/whatsapp/profile.dart';
import 'package:hello/widget/whatsapp/whatsapp_home.dart';


// import 'package:hello/widget/alert.dart';
// import 'package:hello/widget/animated.dart';
// import 'package:hello/widget/bootomnav.dart';
// import 'package:hello/widget/bottomsheet.dart';
// import 'package:hello/widget/drawer.dart';
// import 'package:hello/widget/sample.dart';

// import 'package:hello/widget/drawer.dart';
// import 'package:hello/widget/image.dart';
// import 'package:hello/widget/listview1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:   ThemeData(iconTheme:  const IconThemeData(
        color: Color.fromARGB(255, 255, 255, 255),

        
      ),
      iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)))),
      
        debugShowCheckedModeBanner: false,
        // home: const ProfileWidget(),
        
        home: const WhatsappHomePage()
        // )
        );
  }
}
