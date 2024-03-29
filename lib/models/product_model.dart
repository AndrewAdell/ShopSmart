class ProductModel {
  int? id;
  String? title;
  dynamic price;
  String? description;
  String? category;
  String? image;
  RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      category: jsonData["category"],
      image: jsonData["image"],
      rating: RatingModel.fromJson(jsonData["rating"]),
    );
  }
}

class RatingModel {
  dynamic rate;
  int? count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData["rate"], count: jsonData["count"]);
  }
}
