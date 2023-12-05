import 'package:ecommerceapp/customwidgets/adboard.dart';
import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KidsItemView extends StatefulWidget {
  const KidsItemView({super.key});

  @override
  State<KidsItemView> createState() => _KidsItemViewState();
}

class _KidsItemViewState extends State<KidsItemView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, kids, child) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AdBoardView(text: 'Up To 30% Discount !!'),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          kids.listview = !kids.listview;
                        });
                      },
                      icon: Icon(
                          kids.listview ? Icons.list : Icons.grid_on_outlined)))
            ],
          ),
        );
      },
    );
  }
}
