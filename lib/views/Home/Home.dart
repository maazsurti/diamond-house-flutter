import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:learning_flutter/constants/URLs.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/helpers/models/categories_model.dart';
import 'package:learning_flutter/helpers/models/services_model.dart';
import 'package:learning_flutter/views/Services.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/images.dart';
import '../../../../reusable_views/navbar.dart';

class Homepage extends StatefulWidget {
  final String title;

  const Homepage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Category? categoryData;
  final List<Service> serviceData = <Service>[];
  var isLoading = true;

  @override
  void initState() {
    getCategoriesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          navigationBar: navBar,
          backgroundColor: Colors.white,
          child: Material(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: HomepageHeaderView(),
                ),
                SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                  builder: ((context, snapshot) {
                    if (isLoading) {
                      return Center(
                          child: CupertinoActivityIndicator(
                        radius: 20,
                      ));
                    } else {
                      return Expanded(
                        child: Center(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: serviceData.length,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: () {
                                  if (serviceData.isNotEmpty) {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => ServicesView(
                                                data:
                                                    serviceData[index].data!)));
                                  }
                                },
                                child: ServiceCard(
                                  image: categoryData!.data[index].image,
                                  title: categoryData!.data[index].name,
                                ),
                              );
                            }),
                          ),
                        ),
                      );
                    }
                  }),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> getCategoriesData() async {
    try {
      var response = await http.get(Uri.parse(getCategories), headers: header);
      final categories = categoryFromJson(response.body);

      setState(() {
        categoryData = categories;
      });

      for (var data in categoryData!.data) {
        await getServices(data.categoryId);
      }

      setState(() {
        isLoading = false;
      });
    } on HttpException catch (e) {
      log(e.toString());
    }
  }

  Future<void> getServices(String id) async {
    try {
      var url = "$getCategories/$id";
      var response = await http.get(Uri.parse(url), headers: header);
      final services = serviceFromJson(response.body);
      setState(() {
        serviceData.add(serviceFromJson(response.body));
      });
    } catch (e) {
      log(e.toString());
    }
  }
}

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
      color: null,
      elevation: 0,
      shape: ContinuousRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: fontName,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 200,
              width: logicalWidth,
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/placeholder.png",
                image: image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

class HomepageHeaderView extends StatelessWidget {
  const HomepageHeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.fromLTRB(logicalHeight / 50, logicalHeight / 50, 0, 0),
          child: Row(
            children: [
              SizedBox(
                width: logicalWidth / 4,
                height: logicalHeight / 8,
                child: Picture.homePageLogo,
              ),
              VerticalDivider(
                color: AppColor.primary,
                thickness: 2,
              ),
            ],
          ),
        ),
        SizedBox(width: logicalHeight / 70),
        SizedBox(
          width: logicalWidth / 2.5,
          child: Text(
            "Choose your Desired service!",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: AppColor.primary,
              fontSize: 18,
              letterSpacing: -0.6,
              fontWeight: FontWeight.w100,
              fontFamily: fontName,
            ),
          ),
        ),
      ],
    );
  }
}
