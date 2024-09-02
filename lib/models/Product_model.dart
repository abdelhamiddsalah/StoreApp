class ProductCard {
  final int id;
  final String title;
  final double price;
  final String desc;
  final String image;
  final ratingmodel rating;

  ProductCard({
    required this.id,
    required this.title,
    required this.price,
    required this.desc,
    required this.image,
    required this.rating,
  });

  factory ProductCard.fromJson(Map<String, dynamic> json) {
    return ProductCard(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No Title', // Default value if null
      price: (json['price'] ?? 0.0).toDouble(),
      desc: json['desc'] ?? 'No Description', // Default value if null
      image: json['image'] ?? 'No Image', // Default value if null
      rating: ratingmodel.fromJson(json['rating'] ?? {}),
    );
  }
}

class ratingmodel {
  final double rate;
  final int count;

  ratingmodel({required this.rate, required this.count});

  factory ratingmodel.fromJson(Map<String, dynamic> json) {
    return ratingmodel(
      rate: (json['rate'] ?? 0.0).toDouble(), // Default value if null
      count: json['count'] ?? 0, // Default value if null
    );
  }
}
