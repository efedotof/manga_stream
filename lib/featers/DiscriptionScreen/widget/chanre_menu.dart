





import 'package:flutter/material.dart';

class ChanreMenu extends StatelessWidget {
  const ChanreMenu({super.key, required this.name

  
  });

  final String name;



 @override
Widget build(BuildContext context) {
  return Container(
    constraints: BoxConstraints(
      minWidth: MediaQuery.of(context).size.width * 0.3, // Минимальная ширина
      maxWidth: MediaQuery.of(context).size.width * 0.4, // Максимальная ширина
    ),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xFFFDFDFD),
      border: Border.all(
        color: const Color(0xFFFEE3D1),
        width: 0.5,
      ),
    ),
    alignment: Alignment.center,
    child: Text(
      name,
      style: const TextStyle(color: Color(0xFFF98A3B)),
    ),
  );
}
}



// Padding ChanreMenu(context) =>  Padding(
//   padding: const  EdgeInsets.symmetric(horizontal: 15),
//   child: Container(
//     width: MediaQuery.of(context).size.width * 0.2,
//     padding: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       color: const Color(0xFFFDFDFD),
//       border: Border.all(
//         color: Color(0xFFFEE3D1),
//         width: 0.5
//       )
//     ),
//     alignment: Alignment.center,
//     child: const Text('Todos', style: TextStyle(color: Color(0xFFF98A3B)),),
    
//   ),
// );