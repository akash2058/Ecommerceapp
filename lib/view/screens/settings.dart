import 'package:flutter/material.dart';

class Settingview extends StatelessWidget {
  const Settingview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text('Edit Profile'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text('Change Password'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text('Notification on/off'),
            ),
          ),
        ],
      ),
    );
  }
}
