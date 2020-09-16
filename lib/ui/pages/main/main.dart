import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/drawer/drawer.dart';
import 'package:food_square_app/ui/pages/main/initialize_items.dart';
import 'package:food_square_app/core/extension/int_extension.dart';

class ZZMainScreen extends StatefulWidget {
  static final routerName = "/main";

  @override
  _ZZMainScreenState createState() => _ZZMainScreenState();
}

class _ZZMainScreenState extends State<ZZMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          elevation: 10,
          child: ZZDrawerScreen()
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _currentIndex,
        selectedFontSize: 14.px,
        unselectedFontSize: 14.px,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        onTap: (index){
        setState(() {
          _currentIndex = index;
        });
        },
      ),
      body: IndexedStack(
        children: pages,
        index: _currentIndex,
      )
    );
  }
}
