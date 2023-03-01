import 'package:flutter/material.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;

  const ShimmerWidget.rectangular(
      {super.key, this.width = double.infinity, required this.height});

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        color: Colors.grey,
      );
}

Widget buildShimmer() => ListTile(title: ShimmerWidget.rectangular(height: 16));
