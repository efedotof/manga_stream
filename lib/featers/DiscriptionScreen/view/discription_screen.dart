import 'dart:math';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class DiscriptionScreen extends StatefulWidget {
  const DiscriptionScreen({super.key,
  required this.dir, required this.urlImage,
  });

  final String dir;
  final String urlImage;

  @override
  State<DiscriptionScreen> createState() => _DiscriptionScreenState();
}

//became-a-childhood-friend-of-the-midboss

class _DiscriptionScreenState extends State<DiscriptionScreen> {

  late final MangaAPI mangaAPI;
  late final PageManagments method;

  @override
void initState() {
  super.initState();
  // Добавляем задержку для отображения CircularProgressIndicator
  Future.delayed(const Duration(microseconds: 15), () {
    mangaAPI = context.read<MangaAPI>();
    method = context.read<PageManagments>();
    mangaAPI.getdetailsMangas(widget.dir);
  });
}

  @override
  void dispose() {
    mangaAPI.delaydetailsMangas();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
        body:context.watch<MangaAPI>().detailsising == null? const Center(child:  CircularProgressIndicator()) :SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageManga(method: method, imageUrl: widget.urlImage,),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameCaptAuthIcon(
                    capt: context.watch<MangaAPI>().detailsising.countChapters, 
                    title:context.watch<MangaAPI>().detailsising.mainName, 
                    type: context.watch<MangaAPI>().detailsising.type.name, 
                    genros: context.watch<MangaAPI>().detailsising.genres, 
                    capitulos: context.watch<MangaAPI>().chapters, 
                    images: widget.urlImage, 
                    sobre: context.watch<MangaAPI>().detailsising.description , 
                  ),
                  const SizedBox( 
                  ),
                  //ContainerNouse(method:method),
                  const SizedBox(
                    height: 20,
                  ),
                   Discript(discript: context.watch<MangaAPI>().detailsising.description,),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                 
                    verticalDirection:VerticalDirection.down,
  
                    runSpacing:10,
                    spacing: 10,
                    children: List.generate((context.watch<MangaAPI>().detailsising.genres).length, (index) =>  ChanreMenu(name: context.watch<MangaAPI>().detailsising.genres[index].name,)),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  TextFordward(text:'Capitulos', mangaApi: mangaAPI,),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: List.generate(
                      min(5, context.watch<MangaAPI>().chapters.length), 
                      (index) => CapitolosContainer(
                       
                        capt: context.watch<MangaAPI>().chapters.reversed.toList()[index].chapter, 
                        authod: context.watch<MangaAPI>().chapters.reversed.toList()[index].publishers[0].name, 
                        data: context.watch<MangaAPI>().chapters.reversed.toList()[index].uploadDate.toString(), 
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // TextFordwardResenha(method:method,text:'Resenhas e notas'),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // const ReitingContainer(),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  const TutulosSemelnantesText(text:'Titulos semelhantes'),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          10, (index) => MangasContainers(dir: widget.dir, imageUrl: widget.urlImage,)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}

// padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),