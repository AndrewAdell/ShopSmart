import 'package:dio/dio.dart';
import 'package:shop_smart/helper/api.dart';
import 'package:shop_smart/models/product_model.dart';

class GetCategoryService {
  Dio dio = Dio();

  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {    
      productsList.add(ProductModel.fromJson(data[i]));
          }

    return productsList;
  }
}
