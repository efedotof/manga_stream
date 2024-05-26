
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';




class EmbreveContainers extends StatelessWidget {
  const EmbreveContainers({super.key,
    required this.method,
    required this.dir, required this.imageUrl,
  });
  final PageManagments method;
  final String dir;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () => method.embrevecontainersbutton(context,dir, imageUrl),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: const Color(0xFF7A7878)
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFFFF9F4),
  
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.calendar_month, color: Color(0xFFFBA160),),
                        SizedBox(width: 5,),
                        Text('Dezembro 2023', style: TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                )
            ],
          ),
        ),
        
        const SizedBox(height: 10,),
    
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.09,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFF7A7878),
              ),
            ),
    
            const SizedBox(width: 10,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('One Pice', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 5,),
                  Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
              ],
            )
    
          ],
        )
    
    
      ],
    ),
  ),
);
  }
}






// GestureDetector EmbreveContainers(BuildContext context, PageManagments method) => GestureDetector(
//   onTap: () => method.embrevecontainersbutton(context),
//   child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width * 0.6,
//           height: MediaQuery.of(context).size.height * 0.3,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(9),
//             color: const Color(0xFF7A7878)
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                   top: 10,
//                   left: 10,
//                   child: Container(
//                     padding: EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: const Color(0xFFFFF9F4),
  
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.calendar_month, color: Color(0xFFFBA160),),
//                         const SizedBox(width: 5,),
//                         Text('Dezembro 2023', style: TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                   )
//                 )
//             ],
//           ),
//         ),
        
//         const SizedBox(height: 10,),
    
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.09,
//               height: MediaQuery.of(context).size.height * 0.05,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: const Color(0xFF7A7878),
//               ),
//             ),
    
//             const SizedBox(width: 10,),
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                   Text('One Pice', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
//                   const SizedBox(height: 5,),
//                   Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//               ],
//             )
    
//           ],
//         )
    
    
//       ],
//     ),
//   ),
// );

// //color: Color(0xFF1E1D1F),