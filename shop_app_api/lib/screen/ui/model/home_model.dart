// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String category;
  final double price;
  final String image;
  final String description;
  final int id;
  final String title;
  Product({
    required this.category,
    required this.price,
    required this.image,
    required this.description,
    required this.id,
    required this.title,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      description: json['description'],
      id: json['id'],
      title: json['title'],
    );
  }
}
