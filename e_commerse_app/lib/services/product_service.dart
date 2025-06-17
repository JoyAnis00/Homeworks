import 'package:dio/dio.dart';
import 'package:e_commerse_app/models/prodect_model.dart';

class ProductService {
  final String baseUrl;
  final Dio _dio = Dio();

  ProductService({required this.baseUrl});

  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await _dio.get(baseUrl);
      List<dynamic> data = response.data;
      List<ProductModel> products = data.map((product) => ProductModel.fromJson(product)).toList();

      return products;
    } catch (e) {
      throw Exception('Failed to load products');
    }
  }
}
