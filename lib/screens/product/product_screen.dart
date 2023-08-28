import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    required this.product,
  });

  static const String routeName = "/product";

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text(
                  "ADD TO CART",
                  style: Theme.of(context).textTheme.displaySmall,
                ))
          ],
        ),
      ),
      // bottomNavigationBar: const CustomNavbar(),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
            ),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                "Product Information",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              children: [
                ListTile(
                  title: Text(
                    "Deserunt ut velit ad elit do sint. In quis occaecat anim incididunt fugiat cupidatat magna. Ad magna mollit ad Lorem occaecat cillum qui.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: Text(
                "Delivery Information",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              children: [
                ListTile(
                  title: Text(
                    "Deserunt ut velit ad elit do sint. In quis occaecat anim incididunt fugiat cupidatat magna. Ad magna mollit ad Lorem occaecat cillum qui.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
