
import 'dart:convert';

CategoryApi getCategoryClassFromJson(String str) => CategoryApi.fromJson(json.decode(str));

String getCategoryClassToJson(CategoryApi data) => json.encode(data.toJson());

class CategoryApi {
  CategoryApi({
    this.data,
    this.error,
    this.message,
  });

  Data data;
  bool error;
  String message;

  factory CategoryApi.fromJson(Map<String, dynamic> json) => CategoryApi(
    data: Data.fromJson(json["data"]),
    error: json["error"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "error": error,
    "message": message,
  };
}

class Data {
  Data({
    this.categories,
  });

  List<Category> categories;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Category {
  Category({
    this.hasSub,
    this.id,
    this.title,
    this.type,
    this.image,
    this.subCategories,
  });

  bool hasSub;
  String id;
  String title;
  CategoryType type;
  String image;
  List<SubCategory> subCategories;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    hasSub: json["has_sub"],
    id: json["id"],
    title: json["title"],
    type: categoryTypeValues.map[json["type"]],
    image: json["image"],
    subCategories: List<SubCategory>.from(json["sub_categories"].map((x) => SubCategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "has_sub": hasSub,
    "id": id,
    "title": title,
    "type": categoryTypeValues.reverse[type],
    "image": image,
    "sub_categories": List<dynamic>.from(subCategories.map((x) => x.toJson())),
  };
}

class SubCategory {
  SubCategory({
    this.hasSub,
    this.id,
    this.title,
    this.type,
  });

  bool hasSub;
  String id;
  String title;
  SubCategoryType type;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
    hasSub: json["has_sub"],
    id: json["id"],
    title: json["title"],
    type: subCategoryTypeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "has_sub": hasSub,
    "id": id,
    "title": title,
    "type": subCategoryTypeValues.reverse[type],
  };
}

enum SubCategoryType { SUB_CATEGORY }

final subCategoryTypeValues = EnumValues({
  "SUB_CATEGORY": SubCategoryType.SUB_CATEGORY
});

enum CategoryType { MAIN_CATEGORY }

final categoryTypeValues = EnumValues({
  "MAIN_CATEGORY": CategoryType.MAIN_CATEGORY
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
