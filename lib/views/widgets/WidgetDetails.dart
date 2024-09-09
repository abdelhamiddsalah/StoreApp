import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubit/cubit/storecubit_cubit.dart';
import 'package:storeapp/cubit/cubit/storecubit_state.dart';

class Widgetdetails extends StatelessWidget {
  const Widgetdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<storeCubit, storeState>(
      builder: (context, state) {
        if (state is storeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductDetailsLoaded) {
          final product = state.product;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(product.image),
                const SizedBox(height: 16),
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Price: \$${product.price}'),
                const SizedBox(height: 16),
                const Text('Description:'),
                Text(product.desc),
                const SizedBox(height: 16),
                MaterialButton(
                  onPressed: () {
        
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Buy Now'),
                ),
              ],
            ),
          );
        } else if (state is UserError) {
          return Center(
            child: Text('Error: ${state.message}'),
          );
        }

        return const Center(child: Text('No product data available.'));
      },
    );
  }
}
