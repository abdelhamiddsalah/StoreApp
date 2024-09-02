import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/Product_model.dart';

Future<ProductCard?> addproduct({required String title, required String price, required String desc, required String image ,required String category})async{
dynamic data2=await Api().Post(url: 'https://fakestoreapi.com/products', body: {
'title': title,
'price': price,
'description': desc,
'image': image,
'category': category,
}, token: '');
}