import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/MangaAPI.dart';
import 'package:manga_stream/router/router.dart';
import 'package:provider/provider.dart';

class MainhomeExploreScreenSections with ChangeNotifier{

  String dropdown = 'Манга';


  void changeDropdown(BuildContext context,String items){
    dropdown = items;
    context.read<MangaAPI>().getMangaForType(getIndex(items), 40);

    

    notifyListeners();

  }




  ///0 - Манга
  ///1 - Манхва
  ///2 - Маньхуа
  ///3 - Западный комикс
  ///4 - Рукомикс
  ///5 - Индонезийский комикс
  ///6 - Другое


int getIndex(String type) {
  Map<String, int> typeToIndex = {
    'Манга': 0,
    'Манхва': 1,
    'Маньхуа': 2,
    'Западный комикс': 3,
    'Рукомикс': 4,
    'Индонезийский комикс': 5,
    'Другое': 6,
  };

  // Check if the provided type exists in the map
  if (typeToIndex.containsKey(type)) {
    return typeToIndex[type]!;
  } else {
    return -1; // Indicate that the type is not found
  }
}




void slidermangacatbutton(BuildContext context) {
    log('slidermangacatbutton');
    // context.pushRoute(const DiscriptionRoute());
  }

  void containermangabutton(BuildContext context) {
    log('containermangabutton');
    // context.pushRoute(const DiscriptionRoute());
  }

  void gofiltros(BuildContext context) {
    log('gofiltros');
    context.pushRoute(const FiltrosRoute());
  }


void estantestextcontbutton(BuildContext context){
  log('estantestextcontbutton');
    // context.pushRoute(const DiscriptionRoute());
 }
 void containerestantesbutton(BuildContext context){
  log('containerestantesbutton');
    // context.pushRoute(const DiscriptionRoute());
 }
 void mangacontainerestantescreen(BuildContext context){
  log('mangacontainerestantescreen');
    // context.pushRoute(const DiscriptionRoute());
 }

}