import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/views/Home/home.dart';
import 'package:learning_flutter/views/Work/work.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({super.key});

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int currentIndex = 0;
  List<Widget> body = [Homepage(), Homepage(), Homepage(), Homepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedLabelStyle: TextStyle(
          fontFamily: fontName,
        ),
        unselectedLabelStyle: TextStyle(fontFamily: fontName),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.secondary,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColor.primary,
        currentIndex: currentIndex,
        onTap: ((int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(
                CupertinoIcons.house_fill,
                size: 20,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(
                CupertinoIcons.briefcase_fill,
                size: 20,
              ),
            ),
            label: "Work",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(
                CupertinoIcons.group_solid,
                size: 20,
              ),
            ),
            label: "Customers",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(
                CupertinoIcons.person_fill,
                size: 20,
              ),
            ),
            label: "My Account",
          ),
        ],
      ),
    );
  }
}

class PersistentTabBar extends StatefulWidget {
  const PersistentTabBar({super.key});

  @override
  State<PersistentTabBar> createState() => _PersistentTabBarState();
}

class _PersistentTabBarState extends State<PersistentTabBar> {
  TextStyle tabTitleTextStyle = TextStyle(fontFamily: fontName, fontSize: 11);
  List<Widget> screens = [
    Homepage(),
    Work(),
    Homepage(),
    Homepage(),
  ];
  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.house_fill,
          size: 20,
        ),
        activeColorPrimary: AppColor.secondary,
        inactiveColorPrimary: Colors.white,
        textStyle: tabTitleTextStyle,
        title: "Home",
      ),
      PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.briefcase_fill,
            size: 20,
          ),
          activeColorPrimary: AppColor.secondary,
          inactiveColorPrimary: Colors.white,
          textStyle: tabTitleTextStyle,
          title: "Work"),
      PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.group_solid,
            size: 20,
          ),
          activeColorPrimary: AppColor.secondary,
          inactiveColorPrimary: Colors.white,
          textStyle: tabTitleTextStyle,
          title: "Customers"),
      PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.person_fill,
            size: 20,
          ),
          activeColorPrimary: AppColor.secondary,
          inactiveColorPrimary: Colors.white,
          textStyle: tabTitleTextStyle,
          title: "My Account")
    ];
  }

  final controller = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      items: navBarItems(),
      backgroundColor: AppColor.primary,
      navBarStyle: NavBarStyle.simple,
    );
  }
}
// class MainTabBar extends StatelessWidget {
//   const MainTabBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         backgroundColor: AppColor.primary,
//         activeColor: AppColor.secondary,
//         inactiveColor: Colors.white,
//         onTap: (index) {
//           switch (index) {
//           }
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.house_fill,
//               size: 20,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.briefcase_fill,
//               size: 20,
//             ),
//             label: "Work",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.group_solid,
//               size: 20,
//             ),
//             label: "Customers",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.person_fill,
//               size: 20,
//             ),
//             label: "My Account",
//           ),
//         ],
//       ),
//       tabBuilder: (context, index) {
//         switch (index) {
//           case 0:
//             return Homepage(title: "Home Page");
//           case 1:
//             return Homepage(title: "Home Page");
//           case 2:
//             return Homepage(title: "Home Page");
//           default:
//             return Homepage(title: "Home Page");
//         }
//       },
//     );
//   }
// }
