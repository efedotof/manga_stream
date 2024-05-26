
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:manga_stream/router/router.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override 
  Widget build(BuildContext context){
    var method = context.watch<PageManagments>();
   return AutoTabsRouter(    
      routes: const [      
        OneRoute(),
        TwoRoute(),
        ThreeRoute(),      
      ],      
     transitionBuilder: (context,child,animation)=> FadeTransition(                
              opacity: animation,                             
              child: child,                
      ),       
      builder: (context, child) {                      
        final tabsRouter = AutoTabsRouter.of(context);                
        return Scaffold(
            backgroundColor: const Color(0xFFF97316),
            appBar: AppBar(
              backgroundColor: const Color(0xFFF97316),
              automaticallyImplyLeading: false,
              title: const Row(
                children: [
                  Text(
                    'Manga',
                    style: TextStyle(color: Color(0xFFFEFCF9)),
                  ),
                  Text(
                    ' Stream',
                    style: TextStyle(color: Color(0xFFFB934B)),
                  )
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () => method.pularbutton(context),
                  child:  Container(
                   
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.005,
                        bottom: MediaQuery.of(context).size.height * 0.005,
                        left: MediaQuery.of(context).size.width * 0.03,
                        right: MediaQuery.of(context).size.width * 0.03),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFFFA893A),
                          width: 1,
                        )),
                         child: const  Text(
                      'Pular',
                      style: TextStyle(color: Color(0xFFFCEDE2)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: child),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Slider(
                      max: 2,
                      value: method.indexSlider,
                      inactiveColor: const Color(0xFFFB9C5C),
                      thumbColor:const Color(0xFFFDFEFE),
                      activeColor: const Color(0xFFFDF1E8),
                    onChanged: (value) {})
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                )
              ],
            ),
            floatingActionButton: GestureDetector(
              onTap: (){
                method.plusindexpageboard(tabsRouter, context);
              },
              child: Container(
                
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.01,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFFFDFDFD),
                ),
                child: const Text(
                  'Avancar',
                  style: TextStyle(color: Color(0xFFF9893C)),
                ),
              ),
            ),
          );
      },
    );                

  }
}
