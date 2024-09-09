/*import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchCategories() async {
  try {
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.cast<String>(); 
    } else {
      throw Exception('Failed to load categories. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    return [];
  }
}*/
