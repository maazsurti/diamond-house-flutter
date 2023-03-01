import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/constants/images.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/reusable_views/navbar.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(
          context: context,
          isBackButtonEnabled: true,
          title: "Service Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: logicalWidth / 2.1,
              width: logicalWidth,
              child: Image.asset(
                placeholderImagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Text(
                    "Bridal Look",
                    style: TextStyle(
                        fontFamily: fontName,
                        fontSize: 19,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Make your wedding a timeless story",
                    style: TextStyle(
                      fontFamily: fontName,
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    """While the wedding only lasts for a day, your images will be timeless. \nWe capture memories that last a lifetime. We discuss every aspect of the shoot before the day of the wedding and pre plan all the shots and videos with the couple so there are no surprises. \nYou will be assigned a photographer whose job is going to be to make sure every capture makes an impact.
                    """,
                    style: TextStyle(
                      fontFamily: fontName,
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Total Price: 500.000 KWD",
                      style: TextStyle(
                          fontFamily: fontName,
                          fontSize: 20,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: AppColor.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(
                              width: 0.5,
                              color: AppColor.primary,
                            )),
                        padding: EdgeInsets.symmetric(
                          horizontal: logicalWidth / 3,
                        )),
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColor.secondary,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
