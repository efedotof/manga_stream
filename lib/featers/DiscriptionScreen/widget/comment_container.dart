import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:provider/provider.dart';


class CommentContainers extends StatelessWidget {
  const CommentContainers({super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(vertical: 15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFF9A8478),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Amauri Junior',
                    style: TextStyle(
                        color: Color(0xFF1E1D1F),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  color: Color(0xFFF97316),
                                )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '18/08/2023',
                        style: TextStyle(
                            color: Color(0xFF8B8887), fontSize: 14),
                      ),
                      
                    ],
                  ),
    
                  //  Text('email@gmail.com', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
                ],
              ),
            ],
          ),
        const Icon(Icons.message_outlined, color: Color(0xFF242425),)
        ],
      ),
      const SizedBox(height: 10,),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const  Text(
                        'Esse manhwa e sensacional, a historias e incrixel, ansioso para saber mais sobre o pq dos 2 corpos.',
                        style: TextStyle(
                            color: Color(0xFF8B8887), fontSize: 18),
                      ),
      ),
      const SizedBox(height: 10,),
      GestureDetector(
        onTap: () =>  context.read<DiscriptionsScreenSections>().likebutton(context),
        child: const Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.favorite_border, color: Color(0xFFCDCDCD), size: 27,),
                SizedBox(width: 5,),
                Text('120 curtidas', style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 18),)
              ],
            )
          ],
        ),
      )
    
    ],
  ),
);

  }
}




// Padding CommentContainers(BuildContext context, PageManagments method) => Padding(
//   padding: const EdgeInsets.symmetric(vertical: 15),
//   child: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 25,
//                       backgroundColor: Color(0xFF9A8478),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Amauri Junior',
//                           style: TextStyle(
//                               color: Color(0xFF1E1D1F),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: List.generate(
//                                   5,
//                                   (index) => Icon(
//                                         Icons.star,
//                                         color: Color(0xFFF97316),
//                                       )),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               '18/08/2023',
//                               style: TextStyle(
//                                   color: Color(0xFF8B8887), fontSize: 14),
//                             ),
                            
//                           ],
//                         ),
  
//                         //  Text('email@gmail.com', style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
//                       ],
//                     ),
//                   ],
//                 ),
//               Icon(Icons.message_outlined, color: Color(0xFF242425),)
//               ],
//             ),
//             const SizedBox(height: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.9,
//               child:  Text(
//                               'Esse manhwa e sensacional, a historias e incrixel, ansioso para saber mais sobre o pq dos 2 corpos.',
//                               style: TextStyle(
//                                   color: Color(0xFF8B8887), fontSize: 18),
//                             ),
//             ),
//             const SizedBox(height: 10,),
//             GestureDetector(
//               onTap: () => method.likebutton(context),
//               child: Row(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Icon(Icons.favorite_border, color: Color(0xFFCDCDCD), size: 27,),
//                       const SizedBox(width: 5,),
//                       Text('120 curtidas', style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 18),)
//                     ],
//                   )
//                 ],
//               ),
//             )
  
//           ],
//         ),
//       ),
// );
