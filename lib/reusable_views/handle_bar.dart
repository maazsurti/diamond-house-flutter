import 'package:flutter/material.dart';

class Handlebar extends StatelessWidget {
  const Handlebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          width: 40,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.6),
              borderRadius: BorderRadius.circular(2)),
        )
      ],
    );
  }
}
