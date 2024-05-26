// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';




class ExitButton extends StatelessWidget {
  const ExitButton({super.key,
  
    required this.method,
  });

 final PageManagments method;

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
  child: GestureDetector(
    onTap: () => method.exitbt(context),
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
              child: const Icon(Icons.exit_to_app_rounded, color: Color(0xFFFF3E32),),
            ),
    
            const SizedBox(width: 13,),
    
            const Text(
              'Sair da conta',
              style: TextStyle(color: Color(0xFFFF4D46), fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ],
    ),
  ),
);


  }
}





// Padding ExitButton(BuildContext context,PageManagments method) => Padding(
//   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//   child: GestureDetector(
//     onTap: () => method.exitbt(context),
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
//               child: Icon(Icons.exit_to_app_rounded, color: Color(0xFFFF3E32),),
//             ),
    
//             const SizedBox(width: 13,),
    
//             Text(
//               'Sair da conta',
//               style: TextStyle(color: Color(0xFFFF4D46), fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// );


