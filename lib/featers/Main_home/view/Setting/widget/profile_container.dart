

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key,
    required this.method,
  
  });

  final PageManagments method;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
  onTap: () => method.profilecontainerbutton(context),
  child: Container(
    color: Colors.transparent,
    child: const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF9A8478),        
            ),
            SizedBox(width: 10,),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Amauri Junior', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                 Text('email@gmail.com', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
               ],
             ),
          ],
        ),
  
        Icon(Icons.arrow_forward_ios, color: Color(0xFF4A4A4B),)
      ],
    ),
  ),
);
  }
}






// GestureDetector ProfileContainer(BuildContext context,PageManagments method) => GestureDetector(
//   onTap: () => method.profilecontainerbutton(context),
//   child: Container(
//     color: Colors.transparent,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               radius: 30,
//               backgroundColor: Color(0xFF9A8478),        
//             ),
//             const SizedBox(width: 10,),
//             Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//                  Text('Amauri Junior', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
//                  Text('email@gmail.com', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                ],
//              ),
//           ],
//         ),
  
//         Icon(Icons.arrow_forward_ios, color: Color(0xFF4A4A4B),)
//       ],
//     ),
//   ),
// );
///color: Color(0xFF1E1D1F),