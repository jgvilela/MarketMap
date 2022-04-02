import 'package:flutter/material.dart';
import 'package:market_map/models/product.dart';
import 'package:market_map/pages/product_page.dart';
import 'package:market_map/repositories/product_repository.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late ProductRepository productRepository;
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    productRepository = ProductRepository();
    productList = productRepository.products;
  }

  openProductPage(Product product) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ProductPage(product: product)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView.separated(
          itemBuilder: (context, int index) {
            return ListTile(
              leading: Image.asset(
                  'assets/images/${productList[index].idProduct}.png'),
              title: Row(children: [Text(productList[index].name)]),
              subtitle: Text('R\$ ${productList[index].price}'),
              onTap: () => openProductPage(productList[index]),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: productList.length,
        ),
      ),
    );
  }
}
