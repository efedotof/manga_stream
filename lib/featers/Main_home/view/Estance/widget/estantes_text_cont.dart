

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';



class EstantesTextCont extends StatelessWidget {
  const EstantesTextCont({super.key,
    required this.text,
    required this.method,
  
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
    onTap: ()=> context.read<MainhomeExploreScreenSections>().estantestextcontbutton(context),
    child: const Icon(Icons.add, color: Color(0xFF727172),))
  ],
);
  }
}



// Row EstantesTextCont(BuildContext context,PageManagments method,text) => Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// ),
//   GestureDetector(
//     onTap: ()=> method.estantestextcontbutton(context),
//     child: const Icon(Icons.add, color: Color(0xFF727172),))
//   ],
// );
//color: Color(0xFF1D1C1D),