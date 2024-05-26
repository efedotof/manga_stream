
import 'package:hive_flutter/hive_flutter.dart';

part 'buscasrecentesbox.g.dart';


@HiveType(typeId: 7)
class BuscasRecentes extends HiveObject {

  @HiveField(0)
  String title;

  BuscasRecentes({
    this.title = ''
  });
}