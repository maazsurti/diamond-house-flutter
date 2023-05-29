import 'package:flutter/cupertino.dart';

navigateTo(BuildContext context, Widget widget) => Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => widget,
    ));
