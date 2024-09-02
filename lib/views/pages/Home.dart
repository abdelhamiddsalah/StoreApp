import 'package:flutter/material.dart';
import 'package:storeapp/models/Product_model.dart';
import 'package:storeapp/services/Allproducts.dart';
import 'package:storeapp/views/widgets/Product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_rounded),
          ),
        ],
        title: Text('New Trend'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: FutureBuilder<List<ProductCard>>(
          future: fetchProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No products found'));
            }

            List<ProductCard> products = snapshot.data ?? [];
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Product(proc: products[index]),
              itemCount: products.length,
            );
          },
        ),
      ),
    );
  }
}
