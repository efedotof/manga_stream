

import 'package:hive_flutter/hive_flutter.dart';

part 'estantesbox.g.dart';

@HiveType(typeId: 6)
class EstanteBox extends HiveObject {
  @HiveField(0)
  String name;
  
  @HiveField(1)
  List<String> categorias;
  
  @HiveField(2)
  int titlos;
  
  @HiveField(3)
  List<String> gengers;
  
  @HiveField(4)
  String path;

  EstanteBox({
    this.name = '',
    this.categorias = const [], // Initialize an empty list
    this.titlos = 0, // Default value for int
    this.gengers = const [], // Initialize an empty list
    this.path = '', // Default value for String
  });
}