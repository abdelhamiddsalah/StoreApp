import 'dart:convert';

import 'package:http/http.dart' as http;
class Api {
  Future<http.Response> Get({required String url})async{
  http.Response response = await http.get(Uri.parse(url));
  if(response.statusCode == 200){
    return response;
  }
  else{
     throw Exception('Failed to load products');
  }
  }
  Future<http.Response?> Post({required String url, required dynamic body, required String token}) async{
   Map<String, String> headers={};
   if (token != null) {
     headers.addAll({'Authorization':'Bearer $token'});
   }
 http.Response response = await http.post(
  
      Uri.parse(url),
      body:body,
      headers: headers,
    );
dynamic data=    jsonDecode(response.body);
print(data);
}
}