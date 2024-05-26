import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key,
    required this.text
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

//color: Color(0xFF1D1C1D),



// Text TextContainer(text) => Text(
//   text,
//   style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
// );