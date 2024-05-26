
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/ExploreScreenModel.dart';
import 'package:manga_stream/methods/MangaAPI.dart';
import 'package:provider/provider.dart';




AppBar appBar(BuildContext context) => AppBar(
  backgroundColor: Colors.transparent,
  automaticallyImplyLeading: false,
  title: Row(

    children: [
      DropdownButton<String>(
        value: context.watch<MainhomeExploreScreenSections>().dropdown,
        alignment: Alignment.centerLeft,
        
        underline: Container(),
        style: const TextStyle(
          color: Color(0xFFF96708),
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFFF96708),
        ),
        items: List.generate(
          context.watch<MangaAPI>().categorias.length,
          (index) => DropdownMenuItem<String>(
            value: context.watch<MangaAPI>().categorias[index].name,
            child: SizedBox(width: MediaQuery.of(context).size.width * 0.3,child: Text(context.watch<MangaAPI>().categorias[index].name, maxLines: 2,)),
          ),
        ),
        onChanged: (String? value) =>context.read<MainhomeExploreScreenSections>().changeDropdown(context,value!),
      ),
    ],
  ),
);

///color: Color(0xFF0A090B)
///color: Color(0xFF0A090B)