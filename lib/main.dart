import 'package:ecommerce/config/app_router.dart';
import 'package:ecommerce/config/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero to Unicorn',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
