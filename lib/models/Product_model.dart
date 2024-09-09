class ProductCard {
  final int id;
  final String title;
  final double price;
  final String desc;
  final String image;
  final RatingModel rating; // تعديل هنا ليتوافق مع قواعد التسمية.

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
      id: json['id'] ?? 0, // قيمة افتراضية
      title: json['title'] ?? 'غير متوفر', // قيمة افتراضية
      price: json['price']?.toDouble() ?? 0.0, // تأكد من تحويلها إلى double
      desc: json['desc'] ?? 'لا توجد وصف', // قيمة افتراضية
      image: json['image'] ?? 'https://example.com/default.jpg', // قيمة افتراضية
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json['rate']?.toDouble() ?? 0.0, // تأكد من تحويلها إلى double
      count: json['count'] ?? 0, // قيمة افتراضية
    );
  }
}


/*class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
    );
  }
}
*/