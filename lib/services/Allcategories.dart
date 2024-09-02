import 'dart:convert';
import 'package:http/http.dart';
import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/Product_model.dart';

Future<List<dynamic>> fetchcategories() async {
 Response response=await Api().Get(url: 'https://fakestoreapi.com/products/categories');

    List<dynamic> jsonData = json.decode(response.body);
    return jsonData.map((item) => ProductCard.fromJson(item)).toList();
 
}
