// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_smart/models/product_model.dart';

// class AllProductService {
//   Dio dio = Dio();
//   Future<List<ProductModel>> getAllProduct() async {
//     dynamic data = await dio.get('https://fakestoreapi.com/products');
//     print('data: $data');

//     List<ProductModel> productsList = [];

//     for (int i = 0; i < data.length; i++) {
//       productsList.add(ProductModel.fromJson(data[i]));
//     }
//     print('productlist:$productsList');
//     return productsList;
//   }
// }

import 'package:shop_smart/helper/api.dart';
import 'package:shop_smart/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    print('dataaaaaaaaaaaaaa $data');
    return productsList;
  }
}
