import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:learning_flutter/constants/URLs.dart';
import 'package:learning_flutter/models/categories_model.dart';
import 'package:learning_flutter/models/services_model.dart';
import 'package:learning_flutter/views/Services/services.dart';

import '../../../../constants/constants.dart';
import '../../../../reusable_views/navbar.dart';
import 'Components/home_headerview.dart';
import '../../reusable_views/service_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Category? categoryData;
  List<Service> serviceData = <Service>[];
  var isLoading = true;

  @override
  void initState() {
    getCategoriesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context: context, title: "Home Page"),
      body: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
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
                    return Expanded(
                      flex: 1,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CupertinoActivityIndicator(
                            radius: 20,
                          ),
                        ],
                      )),
                    );
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
                                      MaterialPageRoute(
                                        builder: (context) => ServicesView(
                                          data: serviceData[index].data!,
                                          title: categoryData!.data[index].name,
                                        ),
                                      ));
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
      ),
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
      var url = "$getServicesURL/$id";
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
