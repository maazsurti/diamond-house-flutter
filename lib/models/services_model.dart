// To parse this JSON data, do
//
//     final service = serviceFromJson(jsonString);

import 'dart:convert';

Service serviceFromJson(String str) => Service.fromJson(json.decode(str));

class Service {
  List<Data>? data;
  String? message;
  String? messageAr;
  int? success;

  Service({this.data, this.message, this.messageAr, this.success});

  Service.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    message = json['message'];
    messageAr = json['message_ar'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    data['message_ar'] = messageAr;
    data['success'] = success;
    return data;
  }
}

class Data {
  String? serviceId;
  String? name;
  String? nameAr;
  String? image;
  String? heading;
  String? headingAr;
  String? description;
  String? descriptionAr;
  String? price;

  Data(
      {this.serviceId,
      this.name,
      this.nameAr,
      this.image,
      this.heading,
      this.headingAr,
      this.description,
      this.descriptionAr,
      this.price});

  Data.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    name = json['name'];
    nameAr = json['name_ar'];
    image = json['image'];
    heading = json['heading'];
    headingAr = json['heading_ar'];
    description = json['description'];
    descriptionAr = json['description_ar'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['service_id'] = serviceId;
    data['name'] = name;
    data['name_ar'] = nameAr;
    data['image'] = image;
    data['heading'] = heading;
    data['heading_ar'] = headingAr;
    data['description'] = description;
    data['description_ar'] = descriptionAr;
    data['price'] = price;
    return data;
  }
}
