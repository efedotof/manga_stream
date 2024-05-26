
import 'package:hive_flutter/hive_flutter.dart';

part 'modosbox.g.dart';

@HiveType(typeId: 4)
class ModosBox extends HiveObject {

  @HiveField(0)
  bool isdark;


  ModosBox({
    this.isdark = false,
  });

}