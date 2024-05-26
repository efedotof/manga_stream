// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manga_stream/MyLibrary/UnofficialAPIs/mangaparsers.dart';


class MangaAPI with ChangeNotifier{
  var remangaPars = RemangaParsers();
  //категории с мангой
  var categorias;
  var news;
  var genros;
  var manhwa;
  var manhua;
  var other;
  var sliders;
  var interesting;
  var detailsising;
  var chapters;
  var chaptersPage;
  var searcheQuire;
  var uploadData;
  Future getTypes() async{
    categorias = await remangaPars.getMangaTypes();
    notifyListeners();
  }


  Future getAllData() async {
    getTypes();
    getGenge();
    mangas();
    getManhua();
    getManhwa();
    getOther();
    getSliders();
    getInteresting();
    getMangaForType(0,40);
  }

  Future search() async{

  }

  Future mangas() async{
    news = await remangaPars.hotUpdate();
    notifyListeners();
  }


  Future getGenge() async {
    genros = await remangaPars.getMangaGenres();
    notifyListeners();
  }

  Future getManhwa() async {
    manhwa = await remangaPars.mangasForType(1, 20);
    notifyListeners();
  }
  
   Future getManhua() async {
    manhua = await remangaPars.mangasForType(2, 20);
    notifyListeners();
  }


  Future getOther() async {
    other = await remangaPars.mangasForType(6, 20);
    notifyListeners();
  }



  ///0 - Манга
  ///1 - Манхва
  ///2 - Маньхуа
  ///3 - Западный комикс
  ///4 - Рукомикс
  ///5 - Индонезийский комикс
  ///6 - Другое

  ///var dropdownCreate;
  Future getMangaForType(int mangaType, int count ) async {
    uploadData = await remangaPars.mangasForType(mangaType, count);

    for(var items in uploadData){
      log(items.id.toString());

    }

    notifyListeners();
  }


  Future getSliders() async {
    sliders = await remangaPars.mangasForType(0, 1);
    notifyListeners();
  }


  Future getInteresting() async {
    interesting = await remangaPars.interestingNewTitles();
    notifyListeners();
  }


  Future getdetailsMangas(dir) async {
    detailsising = await remangaPars.getMangaDetails(dir);

    log(detailsising.branches[0].id.toString());
    chapters = await remangaPars.getMangaChapters(detailsising.branches[0].id);
    log(chapters[0].publishers[0].name.toString());
    
    notifyListeners();
  }

  Future delaydetailsMangas() async{
    detailsising = null;
  }

  Future getPages() async{
    chaptersPage = await remangaPars.getMangaChapterPages(detailsising.branches[0].id);
    notifyListeners();
  }

  Future getSearche(String quire) async {
    searcheQuire = await remangaPars.searchManga(quire);
    notifyListeners();
  }



}