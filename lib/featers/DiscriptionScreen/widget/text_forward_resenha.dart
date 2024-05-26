


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';

import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';


class TextFordwardResenha extends StatelessWidget {
  const TextFordwardResenha({super.key,
    required this.method,
    required this.text,
  });

  final PageManagments method;
  final String text;

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
    onTap: ()=>  context.read<DiscriptionsScreenSections>().textfordwardresenhasenotasbutton(context),
    child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
  ],
);

  }
}


// Row TextFordwardResenha(BuildContext context, PageManagments method,text) =>  Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// ),
//   GestureDetector(
//     onTap: ()=> method.textfordwardresenhasenotasbutton(context),
//     child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
//   ],
// );
