


import 'package:flutter/material.dart';


class TextCatefories extends StatelessWidget {
  const TextCatefories({super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
  text,
  style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

);
  }
}



// Text TextCatefories(text) => Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// );
///color: Color(0xFF1D1C1D),