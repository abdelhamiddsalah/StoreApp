
import 'package:storeapp/models/Product_model.dart';

abstract class storeState {}

class storeInitial extends storeState {}

class storeLoading extends storeState {}

class storeLoaded extends storeState {
  final List<ProductCard> products;

  storeLoaded(this.products);
}

class UserError extends storeState {
  final String message;

  UserError(this.message);
}
class ProductDetailsLoaded extends storeState {
  final ProductCard product;

  ProductDetailsLoaded({required this.product});
}
