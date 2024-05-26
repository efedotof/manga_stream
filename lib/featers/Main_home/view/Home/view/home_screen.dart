import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';
import '../widget/widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'Mangas';
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
        appBar: appbar(context, method),
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
              SliderManga(
                method: method,
                name: context.watch<MangaAPI>().sliders[0].rusName,
                type: context.watch<MangaAPI>().sliders[0].type,
                imageUrl: context.watch<MangaAPI>().sliders[0].imgHigh, dir: context.watch<MangaAPI>().sliders[0].dir,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextCatefories(text:'Categorias'),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      context.watch<MangaAPI>().categorias.length,
                      (index) => CategoriesContainer(
                            method:method,
                            name:context.watch<MangaAPI>().categorias[index].name,
                          )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextArrowForward(method: method, text: 'Mangas'),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  children: List.generate(
                    context.watch<MangaAPI>().news.length,
                    (index) => MangasContainer(
                      method: method,
                      name: context.watch<MangaAPI>().news[index].rusName,
                      imageUrl: context.watch<MangaAPI>().news[index].imgMid,
                      type: context.watch<MangaAPI>().news[index].type, dir: context.watch<MangaAPI>().news[index].dir,
                      // genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir),
                    ),
                  ),
                ),
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: FutureBuilder<List<String>>(
              //     future: context.read<RemangaParser>().fetchData(),
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.waiting) {
              //         // Пока данные загружаются, показываем анимированные контейнеры
              //         return Row(
              //           children: List.generate(3, (index) =>  Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: SizedBox(
              //                 width: MediaQuery.of(context).size.width * 0.45,
              //                 height: MediaQuery.of(context).size.height * 0.3,
              //                 child: ListView.builder(
              //                   scrollDirection: Axis.horizontal,
              //                   itemCount:
              //                       5, // Количество анимированных контейнеров для загрузки
              //                   itemBuilder: (context, index) {
              //                     return AnimatedContainer(
              //                       duration: Duration(milliseconds: 500),
              //                       width: MediaQuery.of(context).size.width * 0.45,
              //                       height: MediaQuery.of(context).size.height * 0.3,
              //                       decoration: BoxDecoration(
              //                         color: index % 2 == 0
              //                             ? Colors.grey[200]
              //                             : Colors.grey[
              //                                 300], // Цвета, чтобы контейнеры переливались
              //                         borderRadius: BorderRadius.circular(8.0),
              //                       ),
              //                       margin: EdgeInsets.symmetric(horizontal: 8.0),
              //                     );
              //                   },
              //                 ),
              //               ),
              //           ),),
              //         );
              //       } else if (snapshot.hasError) {
              //         // Если произошла ошибка, отобразить сообщение об ошибке
              //         return Text('Error: ${snapshot.error}');
              //       } else {
              //         // Если данные загружены успешно, использовать результат
              //         List<String> data = snapshot.data!;
              //         return Row(
              //           children: List.generate(
              //               5,
              //               (index) => mangas_containers(
              //                   context, method, data[index])),
              //         );
              //       }
              //     },
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              const TextDropdown(text:'Lancamentos'),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: List.generate(
                      context.watch<MangaAPI>().interesting.length,
                      (index) => LuncamentosMangasContainer(
                            method: method,
                            name: context
                                .watch<MangaAPI>()
                                .interesting[index]
                                .rusName,
                            imageUrlMin: context
                                .watch<MangaAPI>()
                                .interesting[index]
                                .imgLow,
                            imageUrlMax: context
                                .watch<MangaAPI>()
                                .interesting[index]
                                .imgHigh, dir: context
                                .watch<MangaAPI>()
                                .interesting[index]
                                .dir,
                          )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextArrowForward(method:method, text: 'Manhwa'),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  children: List.generate(
                    context.watch<MangaAPI>().manhwa.length,
                    (index) => MangasContainer(
                      method: method,
                      name:
                          context.watch<MangaAPI>().interesting[index].rusName,
                      imageUrl: context.watch<MangaAPI>().manhwa[index].imgMid,
                      type: context.watch<MangaAPI>().manhwa[index].type, dir: context.watch<MangaAPI>().manhwa[index].dir,
                      // genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir).toString(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // text_catefories('Em breve'),
              // const SizedBox(
              //   height: 8,
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: List.generate(
              //         10,
              //         (index) => embreve_containers(
              //               context,
              //               method,
              //             )),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              const TextIndicats(text: 'Continue lendo'),
              const SizedBox(
                height: 8,
              ),
              ContainueLendoContainer(method: method, dir: '', imageUrl: context.watch<MangaAPI>().news[0].imgMid,),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextArrowForward(method: method,text: 'Другое'),
              // const SizedBox(
              //   height: 8,
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: List.generate(
              //       context.watch<MangaAPI>().other.length,
              //       (index) => MangasContainer(
              //         method: method,
              //         name: context.watch<MangaAPI>().other[index].rusName,
              //         imageUrl: context.watch<MangaAPI>().other[index].imgMid,
              //         type: context.watch<MangaAPI>().other[index].type, dir: context.watch<MangaAPI>().other[index].dir,
              //         //  genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir).toString(),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              ExploreCard(method: method),
              const SizedBox(
                height: 20,
              ),
              TextArrowForward(method: method,text: 'Manhua'),
              // const SizedBox(
              //   height: 8,
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: List.generate(
                    context.watch<MangaAPI>().manhua.length,
                    (index) => MangasContainer(
                      method: method,
                      name: context.watch<MangaAPI>().manhua[index].rusName,
                      imageUrl: context.watch<MangaAPI>().manhua[index].imgMid,
                      type: context.watch<MangaAPI>().manhua[index].type, dir: context.watch<MangaAPI>().manhua[index].dir,
                      // genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir).toString(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // text_catefories('Baseado em suas buscas'),
              // const SizedBox(
              //   height: 8,
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: List.generate(10,
              //         (index) => luncamentos_mangas_container(context, method)),
              //   ),
              // ),
              // const SizedBox(
              //   height: 50,
              // ),
            ],
          ),
        )));
  }
}
