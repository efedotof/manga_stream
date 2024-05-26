import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:manga_stream/box/buscasrecentesbox/buscasrecentesbox.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';
import '../widget/widget.dart';
@RoutePage()
class SearcheScreen extends StatefulWidget {
  const SearcheScreen({super.key});

  @override
  State<SearcheScreen> createState() => _SearcheScreenState();
}

class _SearcheScreenState extends State<SearcheScreen> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFFF96A07)
        ),
        elevation:10,
        title:const SearchField(),
        automaticallyImplyLeading: false,
      ),

      body:context.watch<SearcheScreenModel>().loadData? const Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,)) :
      SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.watch<SearcheScreenModel>().searchecontroller.text.isNotEmpty?
             Column(
                 children: [
                  const SizedBox(height: 20,),
                   Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 10,
                    spacing: 10,
                    children: List.generate(
                      context.watch<SearcheScreenModel>().searcheQuire.length
                      , (index) => MangasResultContainer(
                        name: context.watch<SearcheScreenModel>().searcheQuire[index].mainName.toString(), 
                        imageUrl: context.watch<SearcheScreenModel>().searcheQuire[index].coverLow, 
                        type: context.watch<SearcheScreenModel>().searcheQuire[index].type, 
                        dir: context.watch<SearcheScreenModel>().searcheQuire[index].dir,
                      )
                    ),
                   ),
                 ],
               )
           
                  
          
        
              
        
              :
        
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  const TextContainer(text:'Недавние поиски'),
                  const SizedBox(height: 8,),
                   ValueListenableBuilder(
        valueListenable: Hive.box<BuscasRecentes>('buscas_recentes').listenable(),
        builder: (context, Box<BuscasRecentes> box, _) {
          if (box.values.isEmpty) {
            return const Center(
              child: Text("Пока что тут ничего нет"),
            );
          }

            return Column(
              children: List.generate(box.values.length, (index){
                BuscasRecentes? res = box.getAt(index);
                return RowLastRequest(text:res!.title);
              }),
            );
        },
              ),
                 
                  const SizedBox(height: 50,),
                ],
              ),




             
        
        
        
        
        
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const SizedBox(height: 20,),
              //     const TextContainer(text:'Buscas recentes'),
              //     const SizedBox(height: 8,),
                  
              //     Column(
              //             children: List.generate(10, (index) => const RowLastRequest(text: 'Lookism',)),
                  
              //     ),
              //     const SizedBox(height: 50,),
              //   ],
              // ),
            ],
          ),
        ),
      ),
      
      endDrawer: Drawer(
        child: ListView(
          children: [

            SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
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
             
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        )


           
            // ListTile(
            //   leading: const Icon(Icons.home),
            //   title: const Text('Home'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/');
            //   },
            // ),
            // ListTile(
            //   leading: const Icon(Icons.person),
            //   title: const Text('Profile'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/profile');
            //   },
            // ),
            // ListTile(
            //   leading: const Icon(Icons.settings),
            //   title: const Text('Settings'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/settings');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}