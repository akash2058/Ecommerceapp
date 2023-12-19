import 'package:ecommerceapp/utilities/icons.dart';
import 'package:flutter/material.dart';

class ManipalDes extends StatelessWidget {
  const ManipalDes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manipal Teaching Hospital'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Appicons.manipal))),
          ),
          Text(
              'Manipal Teaching Hospital (MTH) is a well-known healthcare facility located in Pokhara, Nepal. It is affiliated with Manipal College of Medical Sciences (MCOMS) and is recognized for providing quality healthcare services and medical education.')
        ],
      ),
    );
  }
}
