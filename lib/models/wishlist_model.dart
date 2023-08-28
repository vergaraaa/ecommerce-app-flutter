import 'package:ecommerce/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Wishlist extends Equatable {
  const Wishlist({
    this.products = const <Product>[],
  });

  final List<Product> products;

  @override
  List<Object?> get props => [products];
}
