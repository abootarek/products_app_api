import 'package:flutter/material.dart';
import 'package:shop_app_api/screen/ui/screen_shop.dart';
import 'package:shop_app_api/screen/ui/widget/product_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const ProductListScreen(),
    );
  }
}
