import 'package:flutter/material.dart';


class ForadaestanteText extends StatefulWidget {
  const ForadaestanteText({super.key,
    required this.text,
  
  });

  final String text;

  @override
  State<ForadaestanteText> createState() => _ForadaestanteTextState();
}

class _ForadaestanteTextState extends State<ForadaestanteText> {
  // String dropdownvalue = 'Todos';

  // var items = [
  //   'Todos',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];



  @override
  Widget build(BuildContext context) {
     return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        widget.text,
        style: const TextStyle(
             fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(width: 5,),

      
      // SizedBox(
      //   height: MediaQuery.of(context).size.height * 0.04,
      //   child: DropdownButton(
      //     value: dropdownvalue,
      //     style: const TextStyle(
      //         color: Color(0xFF878787),  fontSize: 18),
      //     icon: const Icon(
      //       Icons.keyboard_arrow_down,
      //       color: Color(0xFF878787),
      //     ),
      //     items: items.map((String items) {
      //       return DropdownMenuItem(
      //         value: items,
      //         child: Text(items),
      //       );
      //     }).toList(),
      //     onChanged: (String? newValue) {
      //       setState(() {
      //         dropdownvalue = newValue!;
      //       });
      //     },
      //   ),
      // ),
    ],
  );
  }
}



// Row ForadaestanteText(text, context, setState) {
//   String dropdownvalue = 'Todos';

//   var items = [
//     'Todos',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];

//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         text,
//         style: const TextStyle(
//              fontWeight: FontWeight.bold, fontSize: 22),
//       ),
//       const SizedBox(width: 5,),
//       Container(
//         height: MediaQuery.of(context).size.height * 0.04,
//         child: DropdownButton(
//           value: dropdownvalue,
//           style: const TextStyle(
//               color: Color(0xFF878787),  fontSize: 18),
//           icon: const Icon(
//             Icons.keyboard_arrow_down,
//             color: Color(0xFF878787),
//           ),
//           items: items.map((String items) {
//             return DropdownMenuItem(
//               value: items,
//               child: Text(items),
//             );
//           }).toList(),
//           onChanged: (String? newValue) {
//             setState(() {
//               dropdownvalue = newValue!;
//             });
//           },
//         ),
//       ),
//     ],
//   );
// }
// ///color: Color(0xFF1D1C1D),