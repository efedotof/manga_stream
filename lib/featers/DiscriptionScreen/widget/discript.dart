


// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:html/parser.dart' as htmlParser;

class Discript extends StatelessWidget {
  const Discript({super.key, required this.discript});
  final String discript;

  String removeHtmlTags(String htmlText) {
    var document = htmlParser.parse(htmlText);
    String parsedString = document.body!.text;
    return parsedString;
  }



  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
                'Sobre',
                style: TextStyle(
                   
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child:  Text(removeHtmlTags(discript),  style: const TextStyle(color: Color(0xFF8B8887), fontSize: 19),),
              )
              // Text.rich(TextSpan(
              //   text: 'Park Tae Jun',
              //   style: TextStyle(color: Color(0xFF8B8887), fontSize: 19),
              //   children: [
              //     TextSpan(
              //       text: ' | ',
              //        style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 19),
              //     ),
              //     TextSpan(
              //       text: 'Cap. 469'
              //     )
              //   ]
              // ))


      
    ],

);
  }
}


// Column Discript(context) =>  Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//                 'Sobre',
//                 style: TextStyle(
//                     color: Color(0xFF1E1D1F),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 26),
//               ),
//               const SizedBox(height: 8,),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Text('Ema uma sociedade que facorece a aparencia, um jovem estudante tem uma vida dupla alternando entre dois corpos de aparencias opostas.\n"Park Hyung Suk passou todos os 12 anos de sua vida na base da cadeia alimentar. Baico, acima do peso e pouco atraente,"',  style: TextStyle(color: Color(0xFF8B8887), fontSize: 19),),
//               )
//               // Text.rich(TextSpan(
//               //   text: 'Park Tae Jun',
//               //   style: TextStyle(color: Color(0xFF8B8887), fontSize: 19),
//               //   children: [
//               //     TextSpan(
//               //       text: ' | ',
//               //        style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 19),
//               //     ),
//               //     TextSpan(
//               //       text: 'Cap. 469'
//               //     )
//               //   ]
//               // ))


      
//     ],

// );