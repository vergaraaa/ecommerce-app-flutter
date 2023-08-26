import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  static const String routeName = "/catalogue";

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const CatalogueScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Catalogue",
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
