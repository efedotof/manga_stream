import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:manga_stream/MyLibrary/UnofficialAPIs/untils/remanga_parser.dart';

import '../box/buscasrecentesbox/buscasrecentesbox.dart';

class SearcheScreenModel with ChangeNotifier {
  TextEditingController searchecontroller = TextEditingController();
  var remangaPars = RemangaParsers();
  bool loadData = false;
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

  var searcheQuire;


  Future saveBoxSearcheModel(String title) async {
    Box<BuscasRecentes> contactsBox = Hive.box<BuscasRecentes>('buscas_recentes');
    contactsBox.add(BuscasRecentes(title: title,));
  }



  



  void changeLoadData(bool isCir){
    loadData = isCir;
    notifyListeners();
  }
  
  void changeSeacreQuire(quire) {
    searchecontroller.text = quire;
    getSearche(searchecontroller.text);
    notifyListeners();
  }



  
  
  Future getSearche(String query) async {

      try {
        changeLoadData(true);



        searcheQuire = await remangaPars.searchManga(query);

        if(searcheQuire != null){
          changeLoadData(false);
        }


      // for (var types in searcheQuire) {
      //   log('Name: ${types.id }');
      // }


    notifyListeners();
      } catch (e) {
        changeLoadData(false);
      }



    
  }





}