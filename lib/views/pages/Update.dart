import 'package:flutter/material.dart';
import 'package:storeapp/views/widgets/TextField.dart';


class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Update Product', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        } ,icon: Icon(Icons.arrow_back),),
      ),
      body: Container(
        child: Textfield()
      ),
    );
  }
}