part of '../pagemanagment.dart';

extension MainhomeHomeSections on PageManagments {
void navigationnotificbutton(BuildContext context){
    log('navigationnotificbutton');
    context.pushRoute( const NotificationRoute());
  }

  void containuelendocontainerbutton(BuildContext context,String dir,String urlImage){
        log('containuelendocontainerbutton');
        context.pushRoute(  DiscriptionRoute(dir: dir, urlImage: urlImage));
  }

  void embrevecontainersbutton(BuildContext context,String dir,String urlImage){
     log('embrevecontainersbutton');
        context.pushRoute(  DiscriptionRoute(dir: dir, urlImage: urlImage));
  }

  void luncamentosmangascontainerbutton(BuildContext context,String dir,String urlImage){
    log('luncamentosmangascontainerbutton');
    context.pushRoute(  DiscriptionRoute(dir: dir, urlImage: urlImage));
  }

  void mangascontainersbutton(BuildContext context,String dir,String urlImage){
    log('mangascontainersbutton');
    context.pushRoute(  DiscriptionRoute(dir: dir, urlImage: urlImage));
  }

  void textarrowforwardbutton(BuildContext context){
    log('textarrowforwardbutton');
    context.pushRoute( const EstanceRoute());
  }

  void categoriescontainerbutton(BuildContext context,){
    log('categoriescontainerbutton');
    // context.pushRoute( DiscriptionRoute());
  }


  void slidermangaontap(BuildContext context, String dir,String urlImage){
    log('slidermangaontap');
    context.pushRoute( DiscriptionRoute(dir: dir, urlImage: urlImage));
  }

  void vejamaisbutton(BuildContext context){
    log('vejamaisbutton');
    // context.pushRoute( DiscriptionRoute());
  }
}