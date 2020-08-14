
import 'package:flutter/material.dart';

class ItemNav{
  final int id;
  final String nom;
  final IconData icon;
  bool isToggle;

  ItemNav({this.id, this.nom,this.icon,this.isToggle=false});
}


class ListItem with ChangeNotifier {
  int _pageindex = 0;

  List<ItemNav> mesCat = [
    ItemNav(id:1, nom: "Tableau de bord",icon: Icons.home, isToggle: true),
    ItemNav(id:2, nom: "Matériel",icon: Icons.work, isToggle: false),
    ItemNav(id:3, nom: "Pv D'avancement",icon: Icons.edit, isToggle: false),
    ItemNav(id:4, nom: "Deconnexion",icon: Icons.power_settings_new, isToggle: false),
  ];
  get pageindex {
    return _pageindex;
  }

  void toggle(ItemNav item) {
    mesCat.forEach((catItem) {
      return catItem.isToggle = false;
    });
    mesCat[mesCat.indexOf(item)].isToggle = true;
    notifyListeners();
  }

  Color getColor(int listIndex) {
    return (_pageindex == listIndex) ? Colors.redAccent : Colors.grey;
  }

  selectedIndex(int listIndex) {
    _pageindex = listIndex;
    notifyListeners();
  }
}
