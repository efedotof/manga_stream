





import 'package:flutter/material.dart';


class TutulosSemelnantesText extends StatelessWidget {
  const TutulosSemelnantesText({super.key,
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



// Text TutulosSemelnantesText(text) => Text(
//   text,
//   style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 22),

// );