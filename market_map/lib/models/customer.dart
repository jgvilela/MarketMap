import 'package:market_map/models/favorite.dart';

class Customer {
  String cpf;
  String name;
  String email;
  String password;
  List<Favorite> favorites;

  Customer({
    required this.cpf,
    required this.name,
    required this.email,
    required this.password,
    required this.favorites,
  });
}
