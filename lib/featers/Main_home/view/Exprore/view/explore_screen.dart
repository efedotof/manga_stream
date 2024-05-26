import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();

    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GenurasContainer(),
                    const SizedBox(
                      width: 10,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      children: List.generate(
                          context
                              .watch<SelectedChipModel>()
                              .selectedNames
                              .length,
                          (index) => MenuCategoria(
                                text: context
                                    .watch<SelectedChipModel>()
                                    .selectedNames[index],
                                index: index,
                              )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SliderManga(
                method: method,
                name: context.watch<MangaAPI>().sliders[0].rusName,
                type: context.watch<MangaAPI>().sliders[0].type,
                imageUrl: context.watch<MangaAPI>().sliders[0].imgHigh,
                dir: context.watch<MangaAPI>().sliders[0].dir,
              ),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                direction: Axis.horizontal,
                runSpacing: 10,
                spacing: 10,
                children: [
                  
                  ...List.generate(
                    context.watch<MangaAPI>().uploadData.length,
                    (index) => MangasContainer(
                      method: method,
                      name: context.watch<MangaAPI>().uploadData[index].rusName,
                      imageUrl: context.watch<MangaAPI>().uploadData[index].imgMid,
                      type: context.watch<MangaAPI>().uploadData[index].type,
                      dir: context.watch<MangaAPI>().uploadData[index].dir,
                     
                    ),
                  ).take(4), 
                 
                  const FiltragemContainer(),
             
                  ...List.generate(
                    context.watch<MangaAPI>().uploadData.length,
                    (index) => MangasContainer(
                      method: method,
                      name: context.watch<MangaAPI>().uploadData[index].rusName,
                      imageUrl: context.watch<MangaAPI>().uploadData[index].imgMid,
                      type: context.watch<MangaAPI>().uploadData[index].type,
                      dir: context.watch<MangaAPI>().uploadData[index].dir,
                    
                    ),
                  ).skip(4), 
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )));
  }
}
