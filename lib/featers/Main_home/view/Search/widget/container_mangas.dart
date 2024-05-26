


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
    return Padding(
  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
  child: GestureDetector(
    onTap:()=>method.containermangasbuttonssearchScreen(context),
    child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              

              Container(
                width: MediaQuery.of(context).size.width * 0.09,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: imageUrl != "" ? Colors.transparent : const Color(0xFF7A7878),
              image: imageUrl != "" ? DecorationImage(
                image: NetworkImage('https://remanga.org$imageUrl'),
                fit: BoxFit.cover,
              ) : null,
          ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(5),
                //   color: const Color(0xFF7A7878),
                // ),
              ),
      
              const SizedBox(width: 10,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     SizedBox(width: MediaQuery.of(context).size.width * 0.5,child: Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),maxLines: 1,)),
                    const SizedBox(height: 5,),
                    //Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
                ],
              )
      
            ],
    ),
  ),
);



//     return Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: GestureDetector(
//     onTap: () => method.mangascontainersbutton(context, dir),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width * 0.45,
//           height: MediaQuery.of(context).size.height * 0.3,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(9),
          //     color: imageUrl != "" ? Colors.transparent : Color(0xFF92CB63),
          //     image: imageUrl != "" ? DecorationImage(
          //       image: NetworkImage('https://remanga.org${imageUrl}'),
          //       fit: BoxFit.cover,
          //     ) : null,
          // ),
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 10,
//                 left: 10,
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: const Color(0xFFFFF9F4),
//                   ),
//                   child: Text(type, style: const TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
//                 )
//               )
//             ],
//           ),
//         ),
//         const SizedBox(height: 10,),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
                // SizedBox(width: MediaQuery.of(context).size.width * 0.5,child: Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),maxLines: 1,)),
               
                
//                 // Text(genre, style: const TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//               ],
//             ),
//           ],
//         )
//       ],
//     ),
//   ),
// );
  }
}



// Padding MangasContainer(BuildContext context,PageManagments method) =>  Padding(
//   padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
//   child: GestureDetector(
//     onTap:()=>method.containermangasbuttonssearchScreen(context),
//     child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.09,
//                 height: MediaQuery.of(context).size.height * 0.05,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: const Color(0xFF7A7878),
//                 ),
//               ),
      
//               const SizedBox(width: 10,),
//               const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                     Text('One Pice', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
//                     const SizedBox(height: 5,),
//                     Text('Aventura, Fantasia,...', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                 ],
//               )
      
//             ],
//     ),
//   ),
// );
// //color: Color(0xFF1E1D1F),