import 'package:dio/dio.dart';
import 'package:shop_smart/models/product_model.dart';

class UpdateProduct {
  Dio dio = Dio();
  Future<ProductModel> updateProduct(
      {required String title,
      required double price,
      required String desc,
      required String image,
      required String category}) async {
    Response response =
        await dio.put('https://fakestoreapi.com/products/:id', data: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    print('response is:$response');
    if (response.statusCode == 200) {
      ProductModel productModel = ProductModel.fromJson(response.data);
      print('response model is:$productModel');
      return productModel;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}
