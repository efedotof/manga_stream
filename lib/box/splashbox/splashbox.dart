import 'package:hive_flutter/hive_flutter.dart';


part 'splashbox.g.dart';


@HiveType(typeId: 0)
class SplashBox extends HiveObject {

  @HiveField(0)
  bool firstentry;

  @HiveField(1)
  bool  theuserisregistered;

  SplashBox({
    this.firstentry = true,
    this.theuserisregistered = false
  });
}