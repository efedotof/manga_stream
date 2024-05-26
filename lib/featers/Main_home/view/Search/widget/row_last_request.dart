


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';


class RowLastRequest extends StatelessWidget {
  const RowLastRequest({super.key, required this.text, 
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
  child: GestureDetector(
    onTap: () => context.read<SearcheScreenModel>().changeSeacreQuire(text),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              child: const Icon(Icons.refresh, color: Color(0xFF535353),),
            ),
    
            const SizedBox(width: 13,),
    
             Text(
              text,
              style: const TextStyle(color: Color(0xFF949494)),
            ),
          ],
        ),
    
        const Icon(Icons.arrow_outward_sharp, color: Color(0xFFF96101),)
    
    
    
    
      ],
    ),
  ),
);
  }
}



// Padding RowLastRequest(BuildContext context, PageManagments method) => Padding(
//   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//   child: GestureDetector(
//     onTap: () => method.rowlastrequestbutton(context),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
    
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Color(0xFFFDFDFD),
//                 border: Border.all(
//                   color: Color(0xFFE8E8E8),
//                   width: 1
//                 ),
//               ),
//               child: Icon(Icons.refresh, color: Color(0xFF535353),),
//             ),
    
//             const SizedBox(width: 13,),
    
//             Text(
//               'Lookism',
//               style: TextStyle(color: Color(0xFF949494)),
//             ),
//           ],
//         ),
    
//         Icon(Icons.arrow_outward_sharp, color: Color(0xFFF96101),)
    
    
    
    
//       ],
//     ),
//   ),
// );

