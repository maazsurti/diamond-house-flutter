import 'package:flutter/material.dart';
import 'package:learning_flutter/helpers/global_functions.dart';

import 'package:learning_flutter/reusable_views/navbar.dart';
import 'package:learning_flutter/views/Services/service_details.dart';

import '../../models/services_model.dart';
import '../../reusable_views/service_card.dart';
import 'Components/service_header.dart';

class ServicesView extends StatelessWidget {
  final List<Data> data;
  final String title;
  const ServicesView({
    Key? key,
    required this.data,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:
            navBar(context: context, isBackButtonEnabled: true, title: title),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(title: title),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            navigateTo(context, ServiceDetails());
                          },
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
        ));
  }
}
