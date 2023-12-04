import 'package:ecommerceapp/customwidgets/customappbar.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Shop'),
      body: const Column(
        children: [Image(image: AssetImage('assets/cart.png'))],
      ),
    );
  }
}
