import 'package:flutter/material.dart';


class SelectedChipModel extends ChangeNotifier {
  List<String> selectedNames = []; // Список выбранных названий
  Color backgroundColor = Colors.white; // Цвет фона по умолчанию

  void selectChip(String name, Color color) {
    if (!selectedNames.contains(name)) {
      selectedNames.add(name);
    } else {
      selectedNames.remove(name);
    }
    backgroundColor = color;
    notifyListeners();
  }

  void clearSelection() {
    selectedNames.clear();
    notifyListeners();
  }

  void deleatIndex(index){
    selectedNames.removeAt(index);
    notifyListeners();

  }



}
