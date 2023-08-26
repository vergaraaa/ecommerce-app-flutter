import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "/";

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Zero to Unicorn",
      ),
      bottomNavigationBar: const CustomNavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // carousel
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),

            // recommended
            // title
            const SectionTitle(title: "RECOMMENDED"),

            // products
            ProductsCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),

            // popular
            // title
            const SectionTitle(title: "MOST POPULAR"),

            // products
            ProductsCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
