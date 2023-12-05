import 'package:ecommerceapp/utilities/icons.dart';
import 'package:ecommerceapp/view/screens/favourite.dart';
import 'package:ecommerceapp/view/screens/homepage.dart';
import 'package:ecommerceapp/view/screens/shop.dart';
import 'package:flutter/material.dart';

class Ecocontroller extends ChangeNotifier {
  bool listview = false;
  bool showhome = false;
  bool showcart = false;
  bool showfavourite = false;
  int currenttab = 0;
  List<Widget> screens = [
    const HomeView(),
    const ShopView(),
    const Favouriteview()
  ];
  List<String> pics = [Appicons.allv, Appicons.sandle, Appicons.gents];
  List<String> mens = [];
}
