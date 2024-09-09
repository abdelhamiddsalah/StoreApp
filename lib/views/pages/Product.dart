import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubit/cubit/storecubit_cubit.dart';
import 'package:storeapp/views/widgets/Gridview.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       BlocProvider(
          create: (context) => storeCubit()..fetchUsers(),
          child: Scaffold(
            backgroundColor: Colors.white,
        appBar: AppBar(title: Text('StoreApp'), backgroundColor: Colors.white,centerTitle: true, leading: IconButton(onPressed: 
        (){}, icon: Icon(Icons.menu)),),
        body: Gridvieww()
      ),
        );
      
  }
}
