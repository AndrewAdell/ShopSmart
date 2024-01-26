import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shop_smart/models/product_model.dart';
import 'package:shop_smart/services/update_product.dart';

class UpdateProductsScreen extends StatefulWidget {
  const UpdateProductsScreen({super.key});

  @override
  State<UpdateProductsScreen> createState() => _UpdateProductsScreenState();
}

class _UpdateProductsScreenState extends State<UpdateProductsScreen> {
  String? productName;

  String? descrpition;

  String? price;

  String? image;

  bool isLOading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLOading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('update Products'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                onSubmitted: (userInput) async {
                  productName = userInput;
                },
                decoration: InputDecoration(
                    label: const Text('product name'),
                    hintText: 'product name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange))),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                onSubmitted: (userInput) async {
                  descrpition = userInput;
                },
                decoration: InputDecoration(
                    label: const Text('Description'),
                    hintText: 'Description',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange))),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onSubmitted: (userInput) async {
                  price = userInput;
                },
                decoration: InputDecoration(
                    label: const Text('Price'),
                    hintText: 'Price',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange))),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                onSubmitted: (userInput) async {
                  image = userInput;
                },
                decoration: InputDecoration(
                    label: const Text('Image'),
                    hintText: 'Image',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Colors.orange))),
              ),
              ElevatedButton(
                  onPressed: () async {
                    isLOading = true;

                    setState(() {});
                    await UpdateProductService().updateProduct(
                        id: product.id,
                        title: productName ?? product.title,
                        price: price ?? product.price.toString(),
                        description: descrpition ?? product.description,
                        image: image ?? product.image,
                        category: product.category);

                    isLOading = false;
                    setState(() {});
                  },
                  child: const Text('update')),
            ],
          ),
        ),
      ),
    );
  }
}
