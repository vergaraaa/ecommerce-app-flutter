import 'package:ecommerce/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Colors.white),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () =>
              Navigator.pushNamed(context, WishlistScreen.routeName),
          icon: const Icon(Icons.favorite),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
