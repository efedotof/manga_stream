import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:provider/provider.dart';


class MangasContainers extends StatelessWidget {
  const MangasContainers({super.key,
    required this.dir, required this.imageUrl,
  });

  final String dir;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  Padding(
  padding: const EdgeInsets.all(8.0),
  child: GestureDetector(
    onTap: ()=>  context.read<DiscriptionsScreenSections>().discriptionsmangascontainers(context, dir,imageUrl),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color(0xFF92CB63)
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
                    child: const Text('Em andamento', style: TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
                  )
                )
    
              ],
            ),
        
        ),
        const SizedBox(height: 10,),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('One Pice', style: TextStyle(color: Color(0xFF1E1D1F), fontWeight: FontWeight.bold, fontSize: 18),),
                  Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
                ],
              ),
    
          ],
        )
    
      ],
    ),
  ),
);
  }
}


// Padding mangas_containers(BuildContext context, PageManagments method, dir) => Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: GestureDetector(
//     onTap: ()=> method.discriptionsmangascontainers(context, dir),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             width: MediaQuery.of(context).size.width * 0.45,
//             height: MediaQuery.of(context).size.height * 0.3,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(9),
//               color: Color(0xFF92CB63)
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 10,
//                   left: 10,
//                   child: Container(
//                     padding: EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: const Color(0xFFFFF9F4),
    
//                     ),
//                     child: Text('Em andamento', style: TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
//                   )
//                 )
    
//               ],
//             ),
        
//         ),
//         const SizedBox(height: 10,),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('One Pice', style: TextStyle(color: Color(0xFF1E1D1F), fontWeight: FontWeight.bold, fontSize: 18),),
//                   Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                 ],
//               ),
    
//           ],
//         )
    
//       ],
//     ),
//   ),
// );