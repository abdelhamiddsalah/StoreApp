import 'package:http/http.dart' as http;

class updateProduct{
  Future<http.Response?> updatepost() async{
  
    http.Response response= await http.put(Uri.parse('https://fakestoreapi.com/products/7'),
 body:{

     'title': 'title',
     'price': '23',
     'descreption': 'description',
     'image': 'image',
     'category':'category'
 },
    );
    if (response.statusCode==200) {
      print(response.body);
    }else{
      throw Exception('error');
    }
  }
}