import 'package:e_commerse_app/cubits/product_cubit/product_state.dart';
import 'package:e_commerse_app/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoading());
  void getProducts() async {
    try {
      emit(ProductLoading());
      final products =
          await ProductService(
            baseUrl: 'https://api.escuelajs.co/api/v1/products',
          ).fetchProducts();

      emit(ProductLoaded(products));
    } catch (e) {
      // ignore: avoid_print
      print('ERROR: ${e.toString()}');
      emit(ProductError(e.toString()));
    }
  }
}
