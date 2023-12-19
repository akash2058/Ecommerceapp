import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, auth, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (query) {
                    // Filter the doctors based on the search query
                    setState(() {
                      searchResult = auth.doctors
                          .where((doctor) => doctor
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                          .toList();
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search',
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: searchResult.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: const Icon(Icons.person),
                          trailing: IconButton(
                              onPressed: () {
                                auth.makePhoneCall(auth.phnumber[index]);
                              },
                              icon: const Icon(Icons.call)),
                          subtitle: Text(auth.phnumber[index]),
                          title: Text(searchResult[index]),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
