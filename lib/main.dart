import 'package:flutter/material.dart';
import 'package:learning_flutter/views/MainTabBar.dart';
import 'constants/constants.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainTabBar(),
      routes: {
        mainTabRoute: (context) => MainTabBar(),
      },
    );
  }
}
