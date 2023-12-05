import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopListCard extends StatelessWidget {
  const ShopListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              child: Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                      const Column(
                        children: [],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: 320,
                bottom: 30,
                child: CircleAvatar(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.heart_fill)),
                ))
          ],
        ));
  }
}
