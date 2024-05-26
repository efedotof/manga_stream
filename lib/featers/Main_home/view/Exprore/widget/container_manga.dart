import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class MangasContainer extends StatelessWidget {
  const MangasContainer({super.key,
    required this.method,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.dir,
  });

  final PageManagments method;
  final String name;
  final String imageUrl;
  final String type;
  final String dir;



  
 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => method.mangascontainersbutton(context, dir, imageUrl),
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.3,
          maxHeight: MediaQuery.of(context).size.height * 0.49,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: imageUrl != "" ? Colors.transparent : const Color(0xFF92CB63),
                  image: imageUrl != "" ? DecorationImage(
                    image: NetworkImage('https://remanga.org$imageUrl'),
                    fit: BoxFit.cover,
                  ) : null,
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
                      child: Text(type, style: const TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
                    )
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.43,child: Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),maxLines: 5,)),
                   
                    
                    // Text(genre, style: const TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
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



// class MangasContainer extends StatelessWidget {
//   const MangasContainer({super.key,
//     required this.method,
//   });

//   final PageManagments method;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: GestureDetector(
//     onTap:()=>method.containermangabutton(context),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             width: MediaQuery.of(context).size.width * 0.4,
//             height: MediaQuery.of(context).size.height * 0.3,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(9),
//               color: const Color(0xFF92CB63)
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 10,
//                   left: 10,
//                   child: Container(
//                     padding: const EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: const Color(0xFFFFF9F4),
    
//                     ),
//                     child: const Text('Em andamento', style: TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
//                   )
//                 )
    
//               ],
//             ),
        
//         ),
//         const SizedBox(height: 10,),
//         const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('One Pice', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
//                   Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                 ],
//               ),
    
//           ],
//         )
    
//       ],
//     ),
//   ),
// );
//   }
// }


// Padding ContainerManga(BuildContext  context, PageManagments method) => Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: GestureDetector(
//     onTap:()=>method.containermangabutton(context),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//             width: MediaQuery.of(context).size.width * 0.4,
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
//                   Text('One Pice', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
//                   Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                 ],
//               ),
    
//           ],
//         )
    
//       ],
//     ),
//   ),
// );
///color: Color(0xFF1E1D1F),