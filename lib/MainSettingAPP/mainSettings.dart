import 'package:hive/hive.dart';
import 'package:manga_stream/box/authbox/authsbox.dart';
import 'package:manga_stream/box/buscasrecentesbox/buscasrecentesbox.dart';
import 'package:manga_stream/box/estantesbox/estantesbox.dart';
import 'package:manga_stream/box/foradaestante/foradaestante.dart';
import 'package:manga_stream/box/modosbox/modosbox.dart';
import 'package:manga_stream/box/splashbox/splashbox.dart';
import 'package:provider/provider.dart';
import '../methods/methods.dart';

class MainSettings{

  void registHive(){
    Hive.registerAdapter(SplashBoxAdapter());
    Hive.registerAdapter(AuthBoxAdapter());
    Hive.registerAdapter(ModosBoxAdapter());
    Hive.registerAdapter(BuscasRecentesAdapter());
    Hive.registerAdapter(ForaDaEstanteBoxAdapter());
    Hive.registerAdapter(EstanteBoxAdapter());
  }

  void openHive() async {
    await Hive.openBox<BuscasRecentes>('buscas_recentes');
    await Hive.openBox<ForaDaEstanteBox>('forada_estante');
    await Hive.openBox<EstanteBox>('estante_box');
  }

  var providers = [
      ChangeNotifierProvider<PageManagments>(create: (_) => PageManagments()),
      ChangeNotifierProvider<MangaAPI>(create: (_) => MangaAPI()),
      ChangeNotifierProvider<SelectedChipModel>(create: (_) => SelectedChipModel()),
      ChangeNotifierProvider<SearcheScreenModel>(create: (_) => SearcheScreenModel()),
      ChangeNotifierProvider<AuthScreenModel>(create: (_) => AuthScreenModel()),
      ChangeNotifierProvider<MainhomeExploreScreenSections>(create: (_) => MainhomeExploreScreenSections()),
      ChangeNotifierProvider<EstanteModel>(create: (_) => EstanteModel()),
      ChangeNotifierProvider<DiscriptionsScreenSections>(create: (_) => DiscriptionsScreenSections()),
    ];

//DiscriptionsScreenSections

 

}
