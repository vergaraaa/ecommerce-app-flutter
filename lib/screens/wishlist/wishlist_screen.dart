import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  static const String routeName = "/wishlist";

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Wishlist",
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
