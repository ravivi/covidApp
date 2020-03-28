import 'tab.dart';

import '../screen/homePage.dart';
import 'package:flutter/material.dart';

import 'tab2.dart';

class Nav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavState();
  }
}

class NavState extends State<Nav> {
  int _pageindex = 0;
  void onItemTapped(int index) {
    setState(() {
      _pageindex = index;
    });
  }

  final _pageContent = [HomePage(), TabPage(),TabPage2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        //backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Accueil')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info_outline,
              ),
              title: Text('News')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.warning,
              ),
              title: Text('Mésures')),
        ],
        currentIndex: _pageindex,
        type: BottomNavigationBarType.fixed,

        onTap: onItemTapped,
      ),
      body: _pageContent.elementAt(_pageindex),
    );
  }
}
