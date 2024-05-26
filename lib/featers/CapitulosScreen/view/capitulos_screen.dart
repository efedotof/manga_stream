import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';
@RoutePage()
class CapitulosScreen extends StatefulWidget {
  const CapitulosScreen({super.key, required this.mangaApi});

  final MangaAPI mangaApi; 


  @override
  State<CapitulosScreen> createState() => _CapitulosScreenState();
}

class _CapitulosScreenState extends State<CapitulosScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      appBar: appbar(context,method ),
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, 
        
        ),
        child:Column(
          children: [
            const SizedBox(height:  20,),
            Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        widget.mangaApi.chapters.length, (index) => CapitolosContainers(capt: widget.mangaApi.chapters.reversed.toList()[index].chapter, authod: widget.mangaApi.chapters.reversed.toList()[index].publishers[0].name, data: widget.mangaApi.chapters.reversed.toList()[index].uploadDate.toString(),)),
                  ),
            
          ],
        ),),
      )
    );
  }
}