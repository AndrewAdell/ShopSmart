import 'package:flutter/material.dart';
import 'package:shop_smart/models/product_model.dart';
import 'package:shop_smart/screens/update_products_screen.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UpdateProductsScreen(),
              settings: RouteSettings(arguments: product)),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 220,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('${product?.title}'.substring(0, 6)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(r'$' '${product?.price}'),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 80,
            child: Image.network(
              '${product?.image}',
              height: 80,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
