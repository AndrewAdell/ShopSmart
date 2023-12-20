import 'package:dio/dio.dart';
import 'package:shop_smart/models/product_model.dart';

class GetCategoryService {
  Dio dio = Dio();

  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    dynamic data = await dio
        .get('https://fakestoreapi.com/products/category/$categoryName');

    if (data.statusCode == 200) {
      List<ProductModel> productsList = [];

      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }

      return productsList;
    } else {
      throw Exception('there is a problem with status code ${data.statusCode}');
    }
  }
}
