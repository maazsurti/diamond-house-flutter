import 'package:flutter/material.dart';
import 'package:learning_flutter/views/main_tabbar.dart';
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
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: Colors.black26)),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.black45)),
      home: PersistentTabBar(),
      routes: {
        mainTabRoute: (context) => MainTabBar(),
      },
    );
  }
}
