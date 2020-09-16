import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/favor/favor.dart';
import 'package:food_square_app/ui/pages/home/home.dart';

 final List<Widget> pages = [
   ZZHomeScreen(),
   ZZFavorScreen()
];

 final List<BottomNavigationBarItem> items = [
   BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页"),),
   BottomNavigationBarItem(icon: Icon(Icons.star),title: Text("收藏"),),
 ];