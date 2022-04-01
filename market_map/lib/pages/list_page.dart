import 'package:flutter/material.dart';
import 'package:market_map/models/product.dart';
import 'package:market_map/repositories/product_repository.dart';

class ListPage extends StatelessWidget {
  final List<Product> productList = ProductRepository.products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView.separated(
          itemBuilder: (context, int index) {
            return ListTile(
              leading: Image.asset(
                  'assets/images/${productList[index].idProduct}.png'),
              title: Text('${productList[index].name}'),
              subtitle: Text('R\$ ${productList[index].price}'),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: productList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
