import 'package:flutter/material.dart';
import 'package:market_map/models/product.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Image.asset('assets/images/${product.idProduct}.png'),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'R\$ ${product.price}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Card(
                  child: Column(children: [
                    ListTile(
                      leading: const Icon(Icons.add_reaction_outlined),
                      title: Text(product.details),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      title: Image.asset('assets/product_location.jpg'),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
