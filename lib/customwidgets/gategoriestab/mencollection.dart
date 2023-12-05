import 'package:ecommerceapp/customwidgets/adboard.dart';
import 'package:ecommerceapp/customwidgets/shopcontainerlist.dart';
import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MensItemView extends StatefulWidget {
  const MensItemView({super.key});

  @override
  State<MensItemView> createState() => _MensItemViewState();
}

class _MensItemViewState extends State<MensItemView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, mens, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AdBoardView(text: 'Up To 20% Discount !!'),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          mens.listview = !mens.listview;
                        });
                      },
                      icon: Icon(mens.listview
                          ? Icons.list
                          : Icons.grid_on_outlined))),
              ShopListCard()
            ],
          ),
        );
      },
    );
  }
}
