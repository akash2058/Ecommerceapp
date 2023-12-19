import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:ecommerceapp/view/screens/messagedetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Messageview extends StatelessWidget {
  const Messageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, value, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  value.doctors.length,
                  (index) => Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MessageDetails()));
                          },
                          subtitle: Text('You:Hi'),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          ),
                          leading: Icon(Icons.person),
                          title: Text(value.doctors[index]),
                        ),
                      )),
            ),
          ),
        );
      },
    );
  }
}
