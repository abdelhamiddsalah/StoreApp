import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:storeapp/models/Product_model.dart';

class ProductService {
  Future<List<ProductCard>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((item) => ProductCard.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Error fetching products');
    }
  }
}
