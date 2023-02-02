import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/views/Home/Home.dart';

class MainTabBar extends StatelessWidget {
  const MainTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: AppColor.primary,
        activeColor: AppColor.secondary,
        inactiveColor: Colors.white,
        onTap: (index) {
          switch (index) {
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_fill,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.briefcase_fill,
              size: 20,
            ),
            label: "Work",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.group_solid,
              size: 20,
            ),
            label: "Customers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_fill,
              size: 20,
            ),
            label: "My Account",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Homepage(title: "Home Page");
          case 1:
            return Homepage(title: "Home Page");
          case 2:
            return Homepage(title: "Home Page");
          default:
            return Homepage(title: "Home Page");
        }
      },
    );
  }
}
