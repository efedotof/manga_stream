import 'package:flutter/material.dart';
import 'package:manga_stream/methods/ChipModel.dart';
import 'package:provider/provider.dart';

class MenuCategoria extends StatelessWidget {
  const MenuCategoria({super.key, required this.text, required this.index});

  final String text;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.all(10),
      backgroundColor: const Color(0xFFFDFDFD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Указываете радиус скругления здесь
        side: const BorderSide(
         color: Color(0xFFFEE3D1),
        width: 0.5
        ),
      ),
      label: Text(text, style: const TextStyle(color: Color(0xFFF98A3B))),
      
      onDeleted:()=> context.read<SelectedChipModel>().deleatIndex(index) ,
    
      deleteIconColor: const Color(0xFFF98A3B),

    );
  }

//     return Padding(
//   padding:  const EdgeInsets.symmetric(horizontal: 15),
//   child: Container(
//     width: MediaQuery.of(context).size.width * 0.2,
//     padding: const EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       color: const Color(0xFFFDFDFD),
      // border: Border.all(
        // color: const Color(0xFFFEE3D1),
        // width: 0.5
      // )
//     ),
//     alignment: Alignment.center,
//     child: const Text('Todos', style: TextStyle(color: Color(0xFFF98A3B)),),

//   ),
// );
//   }
}


// Padding MenuCategoria(context) => Padding(
//   padding:  EdgeInsets.symmetric(horizontal: 15),
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
//     child: Text('Todos', style: TextStyle(color: Color(0xFFF98A3B)),),
    
//   ),
// );


