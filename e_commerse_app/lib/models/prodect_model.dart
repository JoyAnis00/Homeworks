class ProductModel {
  String? id;
  String? name;
  double? price;
  String? imageUrl;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.imageUrl,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['title'];
    price = json['price']?.toDouble();
    if (json['images'] is List && (json['images'] as List).isNotEmpty) {
    imageUrl = json['images'][0].toString();
  } else {
    imageUrl = 'https://via.placeholder.com/150'; 
  }

  }
}
