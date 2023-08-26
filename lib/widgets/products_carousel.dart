import 'package:ecommerce/models/models.dart';

import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductsCarousel extends StatelessWidget {
  const ProductsCarousel({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 165,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            bool isLast = index == products.length - 1;

            return Padding(
              padding: EdgeInsets.only(right: isLast ? 0 : 5),
              child: ProductCard(product: products[index]),
            );
          },
        ),
      ),
    );
  }
}
