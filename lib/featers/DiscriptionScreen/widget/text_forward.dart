


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';


class TextFordward extends StatelessWidget {
  const TextFordward({super.key,
    required this.text, required this.mangaApi
  });
  final String text;
  final MangaAPI mangaApi;

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
  text,
  style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

),
  GestureDetector(
    onTap: ()=>  context.read<DiscriptionsScreenSections>().textfordwardarrowbutton(context, mangaApi),
    child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
  ],
);

  }
}



// Row TextFordward(BuildContext context, PageManagments method,text) =>  Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// ),
//   GestureDetector(
//     onTap: ()=> method.textfordwardarrowbutton(context),
//     child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
//   ],
// );
