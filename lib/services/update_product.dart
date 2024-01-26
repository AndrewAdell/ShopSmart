// import 'package:dio/dio.dart';
// import 'package:shop_smart/models/product_model.dart';

// class UpdateProduct {
//   Dio dio = Dio();
//   Future<ProductModel> updateProduct(
//       {required String title,
//       required double price,
//       required String desc,
//       required String image,
//       required String category}) async {
//     Response response =
//         await dio.put('https://fakestoreapi.com/products/:id', data: {
//       'title': title,
//       'price': price,
//       'description': desc,
//       'image': image,
//       'category': category,
//     });
//     print('response is:$response');
//     if (response.statusCode == 200) {
//       ProductModel productModel = ProductModel.fromJson(response.data);
//       print('response model is:$productModel');
//       return productModel;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }
// }

import 'package:shop_smart/helper/api.dart';
import 'package:shop_smart/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String? title,
    required dynamic price,
    required String? description,
    required String? image,
    required String? category,
    required dynamic id,
  }) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/:$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    print(data);
    print('success');
    return ProductModel.fromJson(data);
  }
}
