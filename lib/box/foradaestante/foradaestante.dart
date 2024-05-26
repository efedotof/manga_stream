

import 'package:hive_flutter/hive_flutter.dart';
import 'package:manga_stream/MyLibrary/UnofficialAPIs/untils/models.dart';


part 'foradaestante.g.dart';

@HiveType(typeId: 8)
class ForaDaEstanteBox extends HiveObject {
  @HiveField(0)
  String name;
  

  @HiveField(1)
  String type;
  
  @HiveField(2)
  int capt;
  
  @HiveField(3)
  List<MangaGenre> gengers;
  
  @HiveField(4)
  String sobre = '';



  @HiveField(5)
  int capitulos = 0;

  @HiveField(6)
  String images = '';

  @HiveField(7)
  String dir = '';


  ForaDaEstanteBox({
    this.name = '',
    this.dir = '',
    this.type = '',
    this.sobre = '',
    this.images = '',
    this.capitulos = 0,
    this.capt = 0,
    this.gengers = const [], // Initialize an empty list
  });
}