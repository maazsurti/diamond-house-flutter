import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/views/Home/Home.dart';
import '../helpers/models/services_model.dart';
import '../reusable_views/navbar.dart';

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
          navigationBar: navBar,
          backgroundColor: Colors.white,
          child: Material(
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ServicesView(
                                      data: data,
                                    )));
                      },
                      child: ServiceCard(
                        image: data[index].image!,
                        title: data[index].heading!,
                      ),
                    );
                  }),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
