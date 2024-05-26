

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

class TextArrowForward extends StatelessWidget {
  const TextArrowForward({super.key, 
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
    onTap: () => method.textarrowforwardbutton(context),
    child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
  ],
);
  }
}


// Row TextArrowForward(BuildContext context,PageManagments method,text) => Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// ),
//   GestureDetector(
//     onTap: () => method.textarrowforwardbutton(context),
//     child: const Icon(Icons.arrow_forward, color: Color(0xFF727172),))
//   ],
// );

// ///color: Color(0xFF1D1C1D),