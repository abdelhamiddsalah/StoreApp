/*import 'package:flutter/material.dart';


class Textfield extends StatelessWidget {
   Textfield({super.key, String? productname});

  
  // Controllers for the text fields
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  

 final int productId = 1;
late String productname;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          TextField(
            //controller: _titleController,
            onChanged: (value) {
              
              productname= value;
            },
            decoration: InputDecoration(
              hintText: 'Product Name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
            ),
          ),
          SizedBox(height: 15,),
           TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: 'Description',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
            ),
          ),
          SizedBox(height: 15,),
           TextFormField(
            controller: _priceController,
            decoration: InputDecoration(
              hintText: 'Price',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
            ),
          ),
          SizedBox(height: 15,),
           TextFormField(
            controller: _imageController,
            decoration: InputDecoration(
              hintText: 'image',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16)
            ),
            child: MaterialButton(onPressed: (){
            
            },
            child: Text('Update', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
    
  }
}*/