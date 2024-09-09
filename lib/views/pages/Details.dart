import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubit/cubit/storecubit_cubit.dart';
import 'package:storeapp/views/widgets/WidgetDetails.dart';

class Details extends StatefulWidget {
  const Details( {super.key});
 

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => storeCubit()..fetchUsers(),
          child: Scaffold(
            backgroundColor: Colors.white,
        appBar: AppBar(title: Text('StoreApp'), backgroundColor: Colors.white,centerTitle: true, leading: IconButton(onPressed: 
        (){}, icon: Icon(Icons.menu)),),
        body: Widgetdetails()
      ),
        );
  }
}