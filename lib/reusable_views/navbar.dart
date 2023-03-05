import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import '../helpers/colors.dart';

AppBar navBar(
    {bool isBackButtonEnabled = false,
    required BuildContext context,
    String title = ""}) {
  return AppBar(
    backgroundColor: AppColor.primary,
    elevation: 0,
    title: Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: AppColor.secondary,
            letterSpacing: -0.6,
            fontFamily: fontName,
            fontWeight: FontWeight.w700),
      ),
    ),
    leading: isBackButtonEnabled
        ? CupertinoButton(
            child: Icon(
              CupertinoIcons.chevron_left,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context);
            })
        : null,
    actions: [
      CupertinoButton(
        child: Icon(
          Icons.notifications,
          size: 25,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}

// var navBar = CupertinoNavigationBar(
//   backgroundColor: AppColor.primary,
//   leading: Column(
//     children: [
//       Row(
//         children: [
//           SizedBox(width: 3),
//           Text(
//             "Home Page",
//             style: TextStyle(
//                 color: AppColor.secondary,
//                 fontFamily: fontName,
//                 fontSize: logicalWidth * 0.045,
//                 fontWeight: FontWeight.w400),
//           ),
//         ],
//       ),
//       SizedBox(
//         height: 5,
//       )
//     ],
//   ),
//   trailing: Transform.translate(
//     offset: const Offset(12, -14),
//     child: CupertinoButton(
//       child: Icon(
//         Icons.notifications,
//         size: 25,
//         color: Colors.white,
//       ),
//       onPressed: () {},
//     ),
//   ),
// );
