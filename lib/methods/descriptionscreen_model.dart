import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:manga_stream/box/foradaestante/foradaestante.dart';
import 'package:manga_stream/methods/MangaAPI.dart';
import 'package:manga_stream/router/router.dart';


class DiscriptionsScreenSections with ChangeNotifier {
  void imagemangasharebutton(BuildContext context){
     log('imagemangasharebutton');
  }
  
  void namecaptauthiconbookmarkbutton(BuildContext context,type, name, capitulos, capt, genros, images, sobre){
    Box<ForaDaEstanteBox> contactsBox = Hive.box<ForaDaEstanteBox>('forada_estante');
    contactsBox.add(ForaDaEstanteBox(type: type, name: name, capitulos: capitulos, capt: capt, gengers: genros, sobre: sobre,images: images));
  }
   
   

  void shared(){
    log('shared');
  }



  void containernousenotificationsbutton(BuildContext context){
     log('containernousenotificationsbutton');
  } 
  
  void textfordwardarrowbutton(BuildContext context, MangaAPI mangaApi){
     log('textfordwardarrowbutton');
     context.pushRoute( CapitulosRoute(mangaApi: mangaApi));
  }
  
  void capitoloscontainerontap(BuildContext context,){
     log('capitoloscontainerontap');
     context.pushRoute( const ReaderRoute());
  }
  
  void textfordwardresenhasenotasbutton(BuildContext context){
     log('textfordwardresenhasenotasbutton');
     context.pushRoute(const CommentsRoute());
  }

  void likebutton(BuildContext context){
     log('likebutton');
  }

  void discriptionsmangascontainers(BuildContext context, String dir,String urlImage){
     log('discriptionsmangascontainers');
     context.pushRoute( DiscriptionRoute(dir: '', urlImage: urlImage));
  }


}