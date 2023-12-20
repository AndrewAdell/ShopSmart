import 'package:dio/dio.dart';
import 'package:shop_smart/models/product_model.dart';

class AllCategoryService {
  Dio dio = Dio();

  Future<List<dynamic>> getAllCategories() async {
    Response data =
        await dio.get('https://fakestoreapi.com/products/categories');

    print("dataaaaaa:$data");

    if (data.statusCode == 200) {
      dynamic allProductModel = ProductModel.fromJson(data);
      print('product modelllll:$allProductModel');

      return allProductModel;
    } else {
      throw Exception('there is a problem with status code ${data.statusCode}');
    }
  }
}
