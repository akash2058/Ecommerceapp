import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:ecommerceapp/utilities/icons.dart';
import 'package:ecommerceapp/view/screens/birhospital.dart';
import 'package:ecommerceapp/view/screens/manipaldes.dart';
import 'package:ecommerceapp/view/screens/norvicdes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, value, child) {
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
              ),
              tileColor: Colors.blue,
              title: Text('Hi ${value.user!.username}!!!'),
            ),
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        height: 150,
                        width: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text('Clinic Visit')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.verified_user_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text('Home')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.video_chat,
                                      color: Colors.blue,
                                    ),
                                    Text('Home')
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.badge,
                                      color: Colors.blue,
                                    ),
                                    Text('Pharmacy'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.person_pin,
                                      color: Colors.blue,
                                    ),
                                    Text('Disease')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.coronavirus,
                                      color: Colors.blue,
                                    ),
                                    Text('Covid 19')
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Departments'),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 150,
                  decoration: const BoxDecoration(color: Colors.orange),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('General Care'),
                      Text('675 doctors'),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 150,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Predicators'),
                      Text('675 doctors'),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 150,
                  decoration: const BoxDecoration(color: Colors.pink),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Cardology Care'),
                      Text('675 doctors'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Hospitals'),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BirHospital()));
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Appicons.bir))),
                    child: const Text(
                      'Bir Teaching Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ManipalDes()));
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Appicons.manipal))),
                    child: const Text(
                      'Manipal Teaching Hospital',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NorvicDes()));
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Appicons.norvic))),
                    child: const Text(
                      'Norvic Teaching Hospital',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
