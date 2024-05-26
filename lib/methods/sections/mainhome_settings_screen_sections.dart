part of '../pagemanagment.dart';

extension MainhomeSettingsScreenSections on PageManagments {

void profilecontainerbutton(BuildContext context){
  log('profilecontainerbutton');
    context.pushRoute(const ProfileRoute());
 }
 void stopedreadmangaonTap(BuildContext context,){
  log('stopedreadmangaonTap');
    context.pushRoute(const ReaderRoute());
 }
 void notificationrowbuttonbt(BuildContext context){
  log('notificationrowbuttonbt');
    context.pushRoute(const NotificationRoute());
 }
 void estantebuttonbt(BuildContext context){
  log('estantebuttonbt');
    context.pushRoute(const EstanceRoute());
 }
 void idiomabuttonbt(BuildContext context){
  log('idiomabuttonbt');
  context.pushRoute(const IdiomaRoute());
 }
 void mododarksw(BuildContext context){
  log('mododarksw');
    
 }
 void segirancabuttonbt(BuildContext context){
  log('segirancabuttonbt');
    context.pushRoute(const SegurancaRoute());
 }
 void centralbuttonbt(BuildContext context){
  log('centralbuttonbt');
    context.pushRoute(const SobreRoute());
 }
 void exitbt(BuildContext context){
  supabaseHelper.signOutActiveUser(context);
  log('exitbt');
 }



  void toggleNotification({bool modoDark = true}) {
    this.modoDark = modoDark;
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    notifyListeners();
  }



  
}