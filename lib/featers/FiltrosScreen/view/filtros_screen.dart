import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';
import '../widget/widget.dart';

@RoutePage()
class FiltrosScreen extends StatefulWidget {
  const FiltrosScreen({super.key});

  @override
  State<FiltrosScreen> createState() => _FiltrosScreenState();
}

class _FiltrosScreenState extends State<FiltrosScreen> {
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
                // const ContainerName(text:'Ordenar por'),
                // const SizedBox(height:  8,),
                // Wrap(
                //   runSpacing :20,
                //   spacing: 10,
                //   direction: Axis.horizontal,
                //   children: List.generate(6, (index) => const TextNameCatFiltros(text:'Recentes')),
                // ),
                // const SizedBox(height:  20,),
                const ContainerName(text: 'Type'),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  runSpacing: 5,
                  spacing: 10,
                  children: List.generate(
                    context.read<MangaAPI>().categorias.length,
                    (index) => AvaliacoesContainer(
                      text: context.read<MangaAPI>().categorias[index].name,
                      name: context.read<MangaAPI>().categorias[index].name,
                      backgroundColor: const Color(0xFFE56A14),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ContainerName(text: 'Generos'),
                const SizedBox(height: 8),
                Wrap(
                  runSpacing: 5,
                  spacing: 10,
                  direction: Axis.horizontal,
                  children: List.generate(
                    context.watch<MangaAPI>().genros.length,
                    (index) => TextNameCatFiltros(
                      text: context.watch<MangaAPI>().genros[index].name,
                      name: context.watch<MangaAPI>().genros[index].name,
                      backgroundColor: const Color(0xFFE56A14),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                const ButtonFiltrar(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
