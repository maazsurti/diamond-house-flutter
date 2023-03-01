import 'package:flutter/material.dart';

navigateTo(BuildContext context, Widget widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));
