import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hello/widget/alert.dart';
import 'package:hello/widget/drawer.dart';
import 'package:hello/widget/image.dart';
// import 'package:hello/widget/listview1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                color: Color.fromARGB(255, 78, 240, 46),
                centerTitle: true,
                iconTheme: IconThemeData(color: Colors.white)),
            primarySwatch: Colors.green,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            iconTheme: IconThemeData(
                color: Color.fromARGB(255, 214, 10, 10), size: 30)),
        darkTheme: ThemeData(
          primaryColor: Colors.black38,
        ),
        home: const DefaultTabController(
          length: 5,
          initialIndex: 2,
          child: AlertWidget(),
        ));
  }
}

