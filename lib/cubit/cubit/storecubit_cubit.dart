
import 'package:storeapp/cubit/cubit/storecubit_state.dart';
import 'package:bloc/bloc.dart';
import 'package:storeapp/models/Product_model.dart';
import 'package:storeapp/services/Allproducts.dart';
class storeCubit extends Cubit<storeState> {
  storeCubit() : super(storeInitial());

  Future<void> fetchUsers() async {
    emit(storeLoading());
    try {
         final products = await ProductService().fetchProducts(); 
        emit(storeLoaded(products)); 
    } catch (e) {
      emit(UserError(e.toString())); 
    }
  }
  void loadProductDetails(ProductCard product) {
    emit(ProductDetailsLoaded(product: product));
  }
}

