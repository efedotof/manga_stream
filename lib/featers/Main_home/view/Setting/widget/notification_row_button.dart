import 'package:flutter/material.dart';

import 'package:manga_stream/methods/pagemanagment.dart';


class NotificationRowButton extends StatelessWidget {
  const NotificationRowButton({super.key,
    required this.method,

  });
  final PageManagments method;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: GestureDetector(
        onTap: () => method.notificationrowbuttonbt(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFFDFDFD),
                          border: Border.all(color: const Color(0xFFE8E8E8), width: 1),
                        ),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Color(0xFF8F8F90),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF97316)
                          ),
                        ),
        
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'Notificacoes',
                  style: TextStyle(
                  
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF4C4C4D),
            )
          ],
        ),
      ),
    );




  }
}




// Padding NotificationRowButton(BuildContext context,PageManagments method) => Padding(
//       padding: EdgeInsets.symmetric(
//           vertical: MediaQuery.of(context).size.height * 0.01),
//       child: GestureDetector(
//         onTap: () => method.notificationrowbuttonbt(context),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(1),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.transparent,
//                   ),
//                   child: Stack(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(5),
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFFDFDFD),
//                           border: Border.all(color: Color(0xFFE8E8E8), width: 1),
//                         ),
//                         child: Icon(
//                           Icons.notifications_outlined,
//                           color: Color(0xFF8F8F90),
//                         ),
//                       ),
//                       Positioned(
//                         right: 0,
//                         top: 0,
//                         child: Container(
//                           width: 10,
//                           height: 10,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Color(0xFFF97316)
//                           ),
//                         ),
        
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 13,
//                 ),
//                 Text(
//                   'Notificacoes',
//                   style: TextStyle(
//                       color: Color(0xFF3D3D3D),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18),
//                 ),
//               ],
//             ),
//             Icon(
//               Icons.arrow_forward_ios,
//               color: Color(0xFF4C4C4D),
//             )
//           ],
//         ),
//       ),
//     );
