import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../helpers/colors.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String image;
  const ServiceCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: ContinuousRectangleBorder(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 17,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.w900,
                  fontFamily: fontName,
                ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 150,
              width: logicalWidth,
              child: FadeInImage.assetNetwork(
                fadeInDuration: Duration(milliseconds: 50),
                placeholder: "assets/images/placeholder.png",
                image: image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
