import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:manga_stream/box/estantesbox/estantesbox.dart';
import 'package:manga_stream/box/foradaestante/foradaestante.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class EstanceScreen extends StatefulWidget {
  const EstanceScreen({super.key});

  @override
  State<EstanceScreen> createState() => _EstanceScreenState();
}

class _EstanceScreenState extends State<EstanceScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
        appBar: appbar(),
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
              const CrieContainer(),
              const SizedBox(
                height: 20,
              ),
              const ForadaestanteText(
                text: 'Вне книжной полки',
              ),
              const SizedBox(
                height: 8,
              ),

              ValueListenableBuilder(
                valueListenable:
                    Hive.box<ForaDaEstanteBox>('forada_estante').listenable(),
                builder: (context, Box<ForaDaEstanteBox> box, _) {
                  if (box.values.isEmpty) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: const Center(
                        child: Text("Пока что тут ничего нет"),
                      ),
                    );
                  }

                  return Wrap(
                    runSpacing: 20,
                    spacing: 10,
                    children: List.generate(box.values.length, (index) {
                      ForaDaEstanteBox? res = box.getAt(index);
                      return MangasContainer(
                        method: method,
                        name: res!.name,
                        imageUrl: res.images,
                        type: 'res!.type', dir: res.dir,
                        // genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir),
                      );
                    }),
                  );
                },
              ),

              // Center(
              //   child: Wrap(
              //     runSpacing: 20,
              //     spacing: 10,
              //     children: List.generate(
              //       4,
              //       (index) => MangasContainer(
              //           method: method,
              //           name: context.watch<MangaAPI>().news[index].rusName,
              //           imageUrl: context.watch<MangaAPI>().news[index].imgMid,
              //           type: context.watch<MangaAPI>().news[index].type, dir: context.watch<MangaAPI>().news[index].dir,
              //           // genre: context.read<MangaAPI>().getMoreInfo(context.watch<MangaAPI>().news[index].dir),
              //         ),)
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              EstantesTextCont(method: method, text: 'Полки'),
              const SizedBox(
                height: 8,
              ),

              ValueListenableBuilder(
                valueListenable:
                    Hive.box<EstanteBox>('estante_box').listenable(),
                builder: (context, Box<EstanteBox> box, _) {
                  if (box.values.isEmpty) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: const Center(
                        child: Text("Пока что тут ничего нет"),
                      ),
                    );
                  }

                  return Wrap(
                    runSpacing: 20,
                    spacing: 10,
                    children: List.generate(box.values.length, (index) {
                      // EstanteBox? res = box.getAt(index);
                      return ContainerEstantes(method: method);
                    }),
                  );
                },
              ),




              // ValueListenableBuilder(
              //   valueListenable:
              //       Hive.box<EstanteBox>('estante_box').listenable(),
              //   builder: (context, Box<EstanteBox> box, _) {
                  
              //     if (box.values.isEmpty) {
              //       return const Center(
              //         child: Text("Todo list is empty"),
              //       );
              //     }

              //     return Wrap(
              //       runSpacing: 10,
              //       children: List.generate(
              //           4, (index) => ContainerEstantes(method: method)),
              //     );
              //   },
              // ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )));
  }
}
