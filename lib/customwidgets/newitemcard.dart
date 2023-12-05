import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewCardView extends StatelessWidget {
  const NewCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, sales, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                5,
                (index) => Row(children: [
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.yellow),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(color: Colors.pink),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.red),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ])),
          ),
        );
      },
    );
  }
}
