import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubit/cubit/storecubit_cubit.dart';
import 'package:storeapp/cubit/cubit/storecubit_state.dart';

class Gridvieww extends StatelessWidget {
  const Gridvieww({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<storeCubit, storeState>(
      builder: (context, state) {
        if(state is storeLoading){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is storeLoaded){
          final products = state.products;
          return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  childAspectRatio: 0.7, 
                  crossAxisSpacing: 8.0, 
                  mainAxisSpacing: 8.0, 
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                           Navigator.pushNamed(context, 'Details');
                          },
                          child: Stack(
                            children: [
                              Positioned(
                                right: 20,
                                top: 60,
                                child: Image.network(
                                  product.image,
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              Positioned(
                                bottom: 40,
                                left: 8,
                                child: Text(
                                  product.title,
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
                                    Text('\$${product.price.toString() ?? 'jh'}'),
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
                    ),
                  );
                },
              );
        }else if (state is UserError) {
          return Center(child: Text('خطأ: ${state.message}'));
        }
        return Center(child: Text('لا توجد بيانات.'));
      },
    );
  }
}