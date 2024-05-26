import 'package:flutter/material.dart';


class TextDropdown extends StatefulWidget {
  const TextDropdown({super.key,
    required this.text,
  });

  final String text;

  @override
  State<TextDropdown> createState() => _TextDropdownState();
}

class _TextDropdownState extends State<TextDropdown> {

  String dropdownvalue = 'Mangas';

  var items = [
    'Mangas',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        widget.text,
        style: const TextStyle(
             fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(width: 5,),
      // Container(
      //   height: MediaQuery.of(context).size.height * 0.04,
      //   child: DropdownButton(
      //     value: dropdownvalue,
      //     style: const TextStyle(
      //         color: Color(0xFFF96708), fontWeight: FontWeight.bold, fontSize: 22),
      //     icon: const Icon(
      //       Icons.keyboard_arrow_down,
      //       color: Color(0xFFF96708),
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


// Row TextDropdown(text, context, setState) {
//   String dropdownvalue = 'Mangas';

//   var items = [
//     'Mangas',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];

//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         text,
//         style: const TextStyle(
//              fontWeight: FontWeight.bold, fontSize: 22),
//       ),
//       const SizedBox(width: 5,),
//       // Container(
//       //   height: MediaQuery.of(context).size.height * 0.04,
//       //   child: DropdownButton(
//       //     value: dropdownvalue,
//       //     style: const TextStyle(
//       //         color: Color(0xFFF96708), fontWeight: FontWeight.bold, fontSize: 22),
//       //     icon: const Icon(
//       //       Icons.keyboard_arrow_down,
//       //       color: Color(0xFFF96708),
//       //     ),
//       //     items: items.map((String items) {
//       //       return DropdownMenuItem(
//       //         value: items,
//       //         child: Text(items),
//       //       );
//       //     }).toList(),
//       //     onChanged: (String? newValue) {
//       //       setState(() {
//       //         dropdownvalue = newValue!;
//       //       });
//       //     },
//       //   ),
//       // ),
//     ],
//   );
// }


// ///color: Color(0xFF1D1C1D),