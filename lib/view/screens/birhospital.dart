import 'package:ecommerceapp/utilities/icons.dart';
import 'package:flutter/material.dart';

class BirHospital extends StatelessWidget {
  const BirHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bir Teaching Hospital'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Appicons.norvic))),
          ),
          Text(
              'Bir Hospital, also known as the Bir Hospital National Academy of Medical Sciences (NAMS), is a prominent and historic hospital located in Kathmandu, Nepal. It is one of the oldest and most well-known hospitals in Nepal, with a rich history dating back to its establishment during the 19th century')
        ],
      ),
    );
  }
}
