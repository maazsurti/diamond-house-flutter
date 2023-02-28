import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../helpers/colors.dart';
import '../../helpers/models/services_model.dart';
import '../../reusable_views/navbar.dart';
import '../../reusable_views/service_card.dart';

class ServicesView extends StatelessWidget {
  final List<Data> data;
  const ServicesView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          navigationBar: appbar(isBackButtonEnabled: true, context: context),
          backgroundColor: Colors.white,
          child: Material(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {},
                              child: ServiceCard(
                                image: data[index].image ?? "",
                                title: data[index].name ?? "",
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "Sessions",
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 18,
                letterSpacing: 0.2,
                fontWeight: FontWeight.bold,
                fontFamily: fontName,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              color: AppColor.primary,
            ),
          ],
        ),
        Divider(
          thickness: 1,
          indent: 0,
          endIndent: 0,
          height: 24,
          color: AppColor.primary,
        ),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
