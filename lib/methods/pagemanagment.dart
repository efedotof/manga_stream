import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:manga_stream/methods/ChipModel.dart';
import 'package:manga_stream/router/router.dart';
import 'package:manga_stream/supabase/supabase.dart';
import 'package:provider/provider.dart';
//parts
part 'sections/onboarding_screen_sections.dart';
part 'sections/mainhome_settings_screen_sections.dart';
part 'sections/mainhome_search_screen_sections.dart';
part 'sections/mainhome_home_sections.dart';

class PageManagments with ChangeNotifier {
  int indexPageBoard = 0;
  double indexSlider = 0;
  bool modoDark = false;
    SupabaseHelper supabaseHelper = SupabaseHelper();
  void popScreensToScreen(BuildContext context){
    log('popScreensToScreen');
    // ignore: deprecated_member_use
    context.popRoute();
  }
  
  void buttonLimparFiltros(BuildContext context){
     log('buttonLimparFiltros');
    // ignore: deprecated_member_use
    // context.popRoute();
    context.read<SelectedChipModel>().clearSelection();
  }

void buttonfiltrar(BuildContext context){
     log('buttonfiltrar');
    // ignore: deprecated_member_use
    context.popRoute();
  
  }


}