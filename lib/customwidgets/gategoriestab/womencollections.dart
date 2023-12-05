import 'package:ecommerceapp/customwidgets/adboard.dart';
import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WomenItemView extends StatefulWidget {
  const WomenItemView({super.key});

  @override
  State<WomenItemView> createState() => _WomenItemViewState();
}

class _WomenItemViewState extends State<WomenItemView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, women, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AdBoardView(text: 'Up To 25% Discount !!'),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          women.listview = !women.listview;
                        });
                      },
                      icon: Icon(women.listview
                          ? Icons.list
                          : Icons.grid_on_outlined)))
            ],
          ),
        );
      },
    );
  }
}
