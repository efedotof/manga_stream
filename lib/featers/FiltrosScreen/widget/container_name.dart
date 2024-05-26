



import 'package:flutter/material.dart';



class ContainerName extends StatelessWidget {
  const ContainerName({super.key,required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
  text,
  style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26
  ),

);
  }
}



// Text ContainerName(text) => Text(
//   text,
//   style: const TextStyle(
//     fontWeight: FontWeight.bold,
//     fontSize: 26
//   ),

// );