import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../helpers/colors.dart';

class WorkOption extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final Icon icon;
  const WorkOption({
    Key? key,
    required this.title,
    required this.action,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      onTap: action,
      child: SizedBox(
        height: logicalWidth / 3.15,
        width: logicalWidth / 3.15,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black26,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    child: icon,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: fontName,
                      color: AppColor.primary,
                      fontSize: logicalWidth * 0.035,
                      height: 1.1,
                      wordSpacing: -1,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
