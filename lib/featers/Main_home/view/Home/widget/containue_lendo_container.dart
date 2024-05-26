import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

class ContainueLendoContainer extends StatelessWidget {
  const ContainueLendoContainer({super.key,
    required this.method,
    required this.dir, required this.imageUrl,
  });

  final PageManagments method;
  final String dir;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => method.containuelendocontainerbutton(context,dir, imageUrl),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: const Color(0xFF7A7878)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF7A7878),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One Pice',
                        style: TextStyle(
                            
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Aventura, Fantasia,...',
                        style:
                            TextStyle(color: Color(0xFF8B8887), fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                'Cap. 468',
                style: TextStyle(
                    color: Color(0xFFF68A42),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );

  }
}



// GestureDetector ContainueLendoContainer(BuildContext context, PageManagments method) => GestureDetector(
//       onTap: () => method.containuelendocontainerbutton(context),
//       child: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: List.generate(
//                   10,
//                   (index) => Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.6,
//                               height: MediaQuery.of(context).size.height * 0.3,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(9),
//                                   color: const Color(0xFF7A7878)),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                           ],
//                         ),
//                       )),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.09,
//                     height: MediaQuery.of(context).size.height * 0.05,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: const Color(0xFF7A7878),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'One Pice',
//                         style: TextStyle(
                            
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         'Aventura, Fantasia,...',
//                         style:
//                             TextStyle(color: Color(0xFF8B8887), fontSize: 14),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               Text(
//                 'Cap. 468',
//                 style: TextStyle(
//                     color: Color(0xFFF68A42),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ),
//             ],
//           )
//         ],
//       ),
//     );

// //color: Color(0xFF1E1D1F),