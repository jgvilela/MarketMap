import 'package:market_map/models/product.dart';

class ProductRepository {
  List<Product> products = [];

  ProductRepository() {
    products = [
      Product(
          idProduct: 1,
          codebar: '1234567890',
          name: 'Sabão em Pó',
          details: 'Sabão em Pó da melhor marca',
          price: 12.90,
          placementRow: 1,
          placementColumn: 1),
      Product(
          idProduct: 2,
          codebar: '2345678901',
          name: 'Refrigerante',
          details: 'Refrigerante da melhor marca',
          price: 3.90,
          placementRow: 1,
          placementColumn: 2),
      Product(
          idProduct: 3,
          codebar: '3456789012',
          name: 'Goiaba',
          details: 'Goiaba da melhor variedade',
          price: 2.49,
          placementRow: 2,
          placementColumn: 1),
      Product(
          idProduct: 4,
          codebar: '4567890123',
          name: 'Papel Higienico',
          details: 'Papel Higienico da melhor marca',
          price: 45.90,
          placementRow: 2,
          placementColumn: 2),
      Product(
          idProduct: 5,
          codebar: '5678901234',
          name: 'Açúcar',
          details: 'Açúcar da melhor marca',
          price: 5.27,
          placementRow: 3,
          placementColumn: 1),
      Product(
          idProduct: 6,
          codebar: '6789012345',
          name: 'Ovo Caipira',
          details: 'Ovo caipira da melhor qualidade',
          price: 13.50,
          placementRow: 3,
          placementColumn: 2),
      Product(
          idProduct: 7,
          codebar: '7890123456',
          name: 'Alface',
          details: 'Alface da melhor variedade',
          price: 2.80,
          placementRow: 4,
          placementColumn: 1),
      Product(
          idProduct: 8,
          codebar: '8901234567',
          name: 'Manteiga',
          details: 'Manteiga da melhor marca',
          price: 9.99,
          placementRow: 4,
          placementColumn: 2),
      Product(
          idProduct: 9,
          codebar: '9012345678',
          name: 'Bacon',
          details: 'Bacon da melhor marca',
          price: 8.97,
          placementRow: 5,
          placementColumn: 1),
      Product(
          idProduct: 10,
          codebar: '0123456789',
          name: 'Queijo',
          details: 'Queijo da melhor marca',
          price: 34.68,
          placementRow: 5,
          placementColumn: 2),
    ];
  }
}
