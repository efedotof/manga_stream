



import 'package:flutter/material.dart';


class TextFormFields extends StatelessWidget {
  const TextFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: MediaQuery.of(context).size.height * 0.1,
  width: MediaQuery.of(context).size.width,
  child: Expanded(
    child: TextFormField(
      decoration: const InputDecoration(
        hintText: 'deixar minha avaliacao',
        hintStyle: TextStyle(color: Color(0xFF9B9B9B))
      ),
    ),
  ),

);
  }
}

// SizedBox TextFormFields(context) => SizedBox(
//   height: MediaQuery.of(context).size.height * 0.1,
//   width: MediaQuery.of(context).size.width,
//   child: Expanded(
//     child: TextFormField(
//       decoration: const InputDecoration(
//         hintText: 'deixar minha avaliacao',
//         hintStyle: TextStyle(color: Color(0xFF9B9B9B))
//       ),
//     ),
//   ),

// );