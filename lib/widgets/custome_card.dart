import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 220,
          width: 400,
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('handbag Lv'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(r'$225'),
                        Icon(
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
            "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            height: 80,
          ),
        ),
      ],
    );
  }
}
