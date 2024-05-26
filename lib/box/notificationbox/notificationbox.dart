
import 'package:hive_flutter/hive_flutter.dart';

part 'notificationbox.g.dart';


@HiveType(typeId: 3)
class NotificationBox extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String discript;

  @HiveField(2)
  bool notificationnot;
  @HiveField(3)
   bool hotnot;
  @HiveField(4)
   bool infonot;
  @HiveField(5)
   bool aircraftnot;




  NotificationBox({
    this.title = '',
    this.discript = '',
    this.notificationnot = false,
    this.hotnot = false,
    this.infonot = false,
    this.aircraftnot = false,
  });
}