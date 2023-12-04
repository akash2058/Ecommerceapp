import 'package:ecommerceapp/customwidgets/customappbar.dart';
import 'package:flutter/material.dart';

class Favouriteview extends StatelessWidget {
  const Favouriteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Favourite'),
    );
  }
}
