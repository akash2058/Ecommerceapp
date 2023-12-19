import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, get, child) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person),
                  ),
                  Text('Name:${get.user!.username}'),
                  Text('email:${get.user!.email}'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      title: Text('Phone Number'),
                      subtitle: Text('9824567898'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      title: Text('Address'),
                      subtitle: Text('Jadibuti'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      title: Text('Gender'),
                      subtitle: Text('Male'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
