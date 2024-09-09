import 'package:flutter/material.dart';
import 'package:storeapp/models/Product_model.dart';
import 'package:storeapp/views/pages/Details.dart';
import 'package:storeapp/views/pages/Product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       routes: {
    'Details': (context) => const Details(),
  },
      home: UserScreen(),
    );
  }
}
