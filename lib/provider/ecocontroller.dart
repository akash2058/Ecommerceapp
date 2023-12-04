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
  List<Widget> screens = [HomeView(), ShopView(), Favouriteview()];
}
