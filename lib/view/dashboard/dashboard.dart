import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, ecos, child) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: AnimatedContainer(
                              height: ecos.showhome ? 30 : 25,
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      ecos.currenttab = 0;
                                      ecos.showhome = true;
                                      ecos.showcart = false;
                                      ecos.showfavourite = false;
                                    });
                                  },
                                  icon: Icon(
                                    CupertinoIcons.home,
                                    color: ecos.currenttab == 0
                                        ? Color.fromARGB(255, 161, 17, 17)
                                        : Colors.black,
                                  )))),
                      if (ecos.showhome)
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 15,
                              color: ecos.currenttab == 0
                                  ? Color.fromARGB(255, 161, 17, 17)
                                  : Colors.black),
                        )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: AnimatedContainer(
                          height: ecos.showcart ? 30 : 25,
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  ecos.currenttab = 1;
                                  ecos.showhome = false;
                                  ecos.showcart = true;
                                  ecos.showfavourite = false;
                                });
                              },
                              icon: Icon(
                                CupertinoIcons.cart,
                                color: ecos.currenttab == 1
                                    ? Color.fromARGB(255, 161, 17, 17)
                                    : Colors.black,
                              )),
                        ),
                      ),
                      if (ecos.showcart)
                        Text(
                          'Shop',
                          style: TextStyle(
                              fontSize: 15,
                              color: ecos.currenttab == 1
                                  ? Color.fromARGB(255, 161, 17, 17)
                                  : Colors.black),
                        )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: AnimatedContainer(
                        height: ecos.showfavourite ? 30 : 25,
                        duration: Duration(milliseconds: 500),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                ecos.currenttab = 2;
                                ecos.showhome = false;
                                ecos.showcart = false;
                                ecos.showfavourite = true;
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.heart_fill,
                              color: ecos.currenttab == 2
                                  ? Color.fromARGB(255, 161, 17, 17)
                                  : Colors.black,
                            )),
                      )),
                      if (ecos.showfavourite)
                        Text(
                          'Favourites',
                          style: TextStyle(
                              fontSize: 15,
                              color: ecos.currenttab == 2
                                  ? Color.fromARGB(255, 161, 17, 17)
                                  : Colors.black),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: ecos.screens[ecos.currenttab],
        );
      },
    );
  }
}
