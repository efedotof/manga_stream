import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/router/router.dart';

@RoutePage()
class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var selectPageIndex = 0;
  void _openPage(int index, TabsRouter tabsRouter){
    setState(()=> selectPageIndex = index);
    tabsRouter.setActiveIndex(index);
  }
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        ExploreRoute(),
        SearcheRoute(),
        EstanceRoute(),
        SettingRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        // ignore: deprecated_member_use
        return WillPopScope(
          onWillPop: () async{
            return false;
          },
          child: Scaffold(
            body: child,
             bottomNavigationBar: 
          BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(label: '',icon: Icon(Icons.home_outlined)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.explore_outlined), ),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.search), ),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.book_outlined), ),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.person_2_outlined), ),
            ],
          )
          ),
        );
      },
     
    );
  }
}
