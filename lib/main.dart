import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/styles.dart';
import 'package:learning_flutter/views/TabBar.dart';
import 'constants/constants.dart';

void main() {
  runApp(CupertinoApp(
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
      theme: ThemeData(
          primarySwatch: Colors.grey,
          //inputDecorationTheme: textFieldTheme,
          buttonTheme: buttonStyle,
          textButtonTheme: buttonTheme),
      home: MainTabBar(),
      routes: {
        mainTabRoute: (context) => const MainTabBar(),
      },
    );
  }
}
