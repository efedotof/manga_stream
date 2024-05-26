import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';



class IdiomaButton extends StatelessWidget {
  const IdiomaButton({super.key,
    required this.iconData,
    required this.text,
    required this.method,

  });

  final PageManagments method;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
  child: GestureDetector(
    onTap: () => method.idiomabuttonbt(context),
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
              child: Icon(iconData, color: const Color(0xFF8F8F90),),
            ),
    
            const SizedBox(width: 13,),
    
            Text(
              text,
              style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios, color: Color(0xFF4C4C4D),)
      ],
    ),
  ),
);



  }
}





// Padding IdiomaButton(BuildContext context,PageManagments method, iconData, text) => Padding(
//   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//   child: GestureDetector(
//     onTap: () => method.idiomabuttonbt(context),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
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
//               child: Icon(iconData, color: const Color(0xFF8F8F90),),
//             ),
    
//             const SizedBox(width: 13,),
    
//             Text(
//               text,
//               style: TextStyle(color: Color(0xFF3D3D3D), fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//           ],
//         ),
//         const Icon(Icons.arrow_forward_ios, color: Color(0xFF4C4C4D),)
//       ],
//     ),
//   ),
// );


