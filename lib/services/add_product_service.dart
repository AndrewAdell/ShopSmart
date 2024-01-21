// import 'package:dio/dio.dart';
// import 'package:shop_smart/models/product_model.dart';

// class AddProductService {
//   Dio dio = Dio();

//   Future<ProductModel> addProduct(
//       {required String title,
//       required double price,
//       required String desc,
//       required String image,
//       required String category}) async {
//     Response response = await dio.post(
//       'https://fakestoreapi.com/products',
//       data: {
//         'title': title,
//         'price': price,
//         'description': desc,
//         'image': image,
//         'category': category,
//       },
//     );

//     if (response.statusCode == 200) {
//       print(response);
//       ProductModel productModel = ProductModel.fromJson(response.data);

//       return productModel;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }
// }

import 'package:shop_smart/helper/api.dart';
import 'package:shop_smart/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String? title,
    required String? price,
    required String? description,
    required String? image,
    required String? category,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });

    return ProductModel.fromJson(data);
  }
}
