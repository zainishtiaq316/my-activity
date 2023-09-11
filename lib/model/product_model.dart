class Product {
  final int id;
  final String name;
  final int user_id;
  final String details;
  final String added_by;
  final String slug;
  final String product_type;

  Product({
    required this.id,
    required this.name,
    required this.details,
    required this.added_by,
    required this.user_id,
    required this.slug,
    required this.product_type,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      details: json['details'],
      added_by: json['added_by'],
      user_id: json['user_id'],
      slug: json['slug'],
      product_type: json['product_type'],
    );
  }
}
