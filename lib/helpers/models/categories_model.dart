import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
  Category({
    required this.data,
    required this.message,
    required this.messageAr,
    required this.success,
  });

  List<CategoryData> data;
  String message;
  String messageAr;
  int success;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: List<CategoryData>.from(
            json["data"].map((x) => CategoryData.fromJson(x))),
        message: json["message"],
        messageAr: json["message_ar"],
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
        "message_ar": messageAr,
        "success": success,
      };
}

class CategoryData {
  CategoryData({
    required this.categoryId,
    this.name = "Sessions",
    this.nameAr = "Sessions",
    required this.image,
  });

  String categoryId;
  String name;
  String nameAr;
  String image;

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        categoryId: json["category_id"],
        name: json["name"],
        nameAr: json["name_ar"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "name": name,
        "name_ar": nameAr,
        "image": image,
      };
}
