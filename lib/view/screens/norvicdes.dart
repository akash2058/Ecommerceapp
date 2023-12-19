import 'package:ecommerceapp/utilities/icons.dart';
import 'package:flutter/material.dart';

class NorvicDes extends StatelessWidget {
  const NorvicDes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Norvic Teaching Hospital'),
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
              'Norvic International Hospital, often referred to as Norvic Hospital, is a well-known private hospital located in Kathmandu, Nepal. It is recognized for its modern healthcare facilities, a wide range of medical services, and a commitment to providing high-quality healthcare to patients in Nepal and from abroad.')
        ],
      ),
    );
  }
}
