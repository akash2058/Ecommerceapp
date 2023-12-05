import 'package:ecommerceapp/customwidgets/Gategoriestab/kidscollection.dart';
import 'package:ecommerceapp/customwidgets/Gategoriestab/mencollection.dart';
import 'package:ecommerceapp/customwidgets/gategoriestab/womencollections.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Categories'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Men',
              ),
              Tab(
                text: 'Womens',
              ),
              Tab(
                text: 'Kids',
              ),
            ]),
          ),
          body: TabBarView(
              children: [MensItemView(), WomenItemView(), KidsItemView()])),
    );
  }
}
