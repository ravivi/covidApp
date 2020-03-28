import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class NavItem{
  final int id;
  final String nom;
  bool isToggle;

  NavItem({this.id, this.nom,this.isToggle=false});
}



class ListItem with ChangeNotifier {
  int _pageindex = 0;

  List<NavItem> mesCat = [
    NavItem(id:1, nom: "Prevention", isToggle: true),
    NavItem(id:2, nom: "Symptômes", isToggle: false),
    NavItem(id:3, nom: "Statistiques", isToggle: false),
  ];
  get pageindex {
    return _pageindex;
  }

  void toggle(NavItem item) {
    mesCat.forEach((catItem) {
      return catItem.isToggle = false;
    });
    mesCat[mesCat.indexOf(item)].isToggle = true;
    notifyListeners();
  }

  selectedIndex(int listIndex) {
    _pageindex = listIndex;
    notifyListeners();
  }
}
