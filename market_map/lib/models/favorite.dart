import 'package:market_map/models/product.dart';

class Favorite extends Product {
  String cnpj;

  Favorite(
      {required this.cnpj,
      required int idProduct,
      required String codebar,
      required String name,
      required String details,
      required double price,
      required int placementRow,
      required int placementColumn})
      : super(
            idProduct: idProduct,
            codebar: codebar,
            name: name,
            details: details,
            price: price,
            placementRow: placementRow,
            placementColumn: placementColumn);
}
