
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

bool _switchValue = true;

class ModoDark extends StatefulWidget {
  const ModoDark({super.key,
    required this.method,
  });

  final PageManagments method;

  @override
  State<ModoDark> createState() => _ModoDarkState();
}

class _ModoDarkState extends State<ModoDark> {
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFFDFDFD),
              border: Border.all(
                color: const Color(0xFFE8E8E8),
                width: 1
              ),
            ),
            child: const Icon(Icons.dark_mode_outlined, color: Color(0xFF8F8F90),),
          ),
  
          const SizedBox(width: 13,),
  
          const Text(
            'Modo Dark',
            style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),

        CupertinoSwitch(
              value:_switchValue,
              activeColor: const Color(0xFFF5F5F5),
              thumbColor: const Color(0xFF29292A),
              onChanged: (value) {
                setState(() {
                 _switchValue = !_switchValue;

                 
                });
              },

        
      
    )
    ],
  ),
);



  }
}




// Padding ModoDark(BuildContext context, PageManagments method,setState) => Padding(
//   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
  
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             padding: EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Color(0xFFFDFDFD),
//               border: Border.all(
//                 color: Color(0xFFE8E8E8),
//                 width: 1
//               ),
//             ),
//             child: Icon(Icons.dark_mode_outlined, color: const Color(0xFF8F8F90),),
//           ),
  
//           const SizedBox(width: 13,),
  
//           Text(
//             'Modo Dark',
//             style: TextStyle(color: Color(0xFF3D3D3D), fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//         ],
//       ),

//         CupertinoSwitch(
//               value:_switchValue,
//               activeColor: Color(0xFFF5F5F5),
//               thumbColor: Color(0xFF29292A),
//               onChanged: (value) {
//                 setState(() {
//                  _switchValue = !_switchValue;

                 
//                 });
//               },

        
      
//     )
//     ],
//   ),
// );


