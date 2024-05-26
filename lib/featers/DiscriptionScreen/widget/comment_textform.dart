


import 'package:flutter/material.dart';


class CommentTextform extends StatelessWidget {
  const CommentTextform({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: MediaQuery.of(context).size.height * 0.1,
  width: MediaQuery.of(context).size.width,
  child: Expanded(
    child: TextFormField(
      decoration: const InputDecoration(
        hintText: 'deixar minha avaliacao',
        
      ),
    ),
  ),

);
  }
}


// SizedBox CommentTextform(context) => SizedBox(
//   height: MediaQuery.of(context).size.height * 0.1,
//   width: MediaQuery.of(context).size.width,
//   child: Expanded(
//     child: TextFormField(
//       decoration: const InputDecoration(
//         hintText: 'deixar minha avaliacao',
        
//       ),
//     ),
//   ),

// );