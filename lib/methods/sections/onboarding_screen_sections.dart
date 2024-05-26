part of '../pagemanagment.dart';

extension OnboardingScreenSections on PageManagments {
  void plusindexpageboard(TabsRouter tabsRouter, BuildContext context) async {
    final box = await Hive.openBox('splash_box');
    bool firstentry = box.get('firstentry') ?? true;

    if (indexPageBoard >= 0 && indexPageBoard < 2) {
      indexPageBoard += 1;
      indexSlider += 1.0;
      tabsRouter.setActiveIndex(indexPageBoard);
    } else {
      firstentry = false;
      box.put('firstentry', firstentry);
      log('plusindexpageboard');
      // ignore: use_build_context_synchronously
      context.pushRoute(const AuthRoute());
    }
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    notifyListeners();
  }

  void pularbutton(BuildContext context) async {
    final box = await Hive.openBox('splash_box');
    bool firstentry = box.get('firstentry') ?? true;

    // Устанавливаем значение firstentry в false
    firstentry = false;
    box.put('firstentry', firstentry);

    log('pularbutton');
    // ignore: use_build_context_synchronously
    context.router.push(const AuthRoute());
  }
}
