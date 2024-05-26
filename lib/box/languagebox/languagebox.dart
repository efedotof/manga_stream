
import 'package:hive_flutter/hive_flutter.dart';

part 'languagebox.g.dart';


@HiveType(typeId: 5)
class LanguageBox extends HiveObject {

  @HiveField(0)
  String language;

  LanguageBox({
    this.language = ''
  });

}