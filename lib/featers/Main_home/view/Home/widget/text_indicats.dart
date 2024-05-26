
import 'package:flutter/material.dart';


class TextIndicats extends StatelessWidget {
  const TextIndicats({super.key,required this.text});

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
  Container(
    width: MediaQuery.of(context).size.width * 0.05,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xFFFBA160),
    ),
  )
  ],
);
  }
}


// Row TextIndicats(context,text) => Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// ),
//   Container(
//     width: MediaQuery.of(context).size.width * 0.05,
//     height: MediaQuery.of(context).size.height * 0.05,
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       color: const Color(0xFFFBA160),
//     ),
//   )
//   ],
// );
//color: Color(0xFF1D1C1D)