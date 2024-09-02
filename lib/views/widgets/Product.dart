import 'package:flutter/material.dart';
import 'package:storeapp/models/Product_model.dart';

class Product extends StatelessWidget {
   Product({super.key, required this.proc});
 ProductCard proc;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(8.0), // إضافة زوايا مستديرة
      child: Container(
        height: 130,
        width: 120,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0), // نفس زوايا Material
        ),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, 'update');
          },
          child: Stack(
            children: [
               Positioned(
               right: 42,
               top: 10,
                child: Image.network(proc.image, height: 80,width: 80,)
              ),
               Positioned(
                bottom: 40,
                left: 8,
                child: Text(
                  proc.title,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(proc.price.toString()),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
