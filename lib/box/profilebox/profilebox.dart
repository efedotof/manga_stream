
import 'package:hive_flutter/hive_flutter.dart';

part 'profilebox.g.dart';


@HiveType(typeId: 2)
class ProfileBox extends HiveObject {

  @HiveField(0)
  String email;

  @HiveField(1)
  String name;


  @HiveField(2)
  String photoProfile;


  ProfileBox({
    this.email = '',
    this.name = '',
    this.photoProfile = '',
  });

}