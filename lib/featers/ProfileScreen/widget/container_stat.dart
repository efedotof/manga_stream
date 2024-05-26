import 'package:flutter/material.dart';

class ContainerStat extends StatelessWidget {
  const ContainerStat({super.key, required this.elementcont, required this.namecont});

  final String namecont;
  final  int elementcont;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Container(
        padding: const EdgeInsets.all(4),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.129,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.transparent,
          border: Border.all(width: 1.5, color: const Color(0xFFFBB584)),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                3,
                (index) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: const Column(
                        children: [
                          Text(
                            '75',
                            style: TextStyle(
                              
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'глав',
                            style: TextStyle(
                            
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ))
            // Text(
            //                     '75',
            //                     style: TextStyle(
            //                         color: const Color(0xFF0A090B),
            //                         fontSize: 28,
            //                         fontWeight: FontWeight.bold),
            //                   ),
            //                   Text(
            //                     'глав',
            //                     style: const TextStyle(
            //                         color: Color(0xFF0A090B),
            //                         fontSize: 15,
            //                        ),
            //                   ),

            ),
      ),
    );
  }
}



// Padding ContainerStat(
//         BuildContext context, String name_cont, int element_cont) =>
//     Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: MediaQuery.of(context).size.width * 0.05),
//       child: Container(
//         padding: EdgeInsets.all(4),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height * 0.129,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(11),
//           color: Colors.transparent,
//           border: Border.all(width: 1.5, color: Color(0xFFFBB584)),
//         ),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(
//                 3,
//                 (index) => Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: MediaQuery.of(context).size.width * 0.05),
//                       child: Column(
//                         children: [
//                           Text(
//                             '75',
//                             style: TextStyle(
//                                 color: const Color(0xFF0A090B),
//                                 fontSize: 28,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'глав',
//                             style: const TextStyle(
//                               color: Color(0xFF0A090B),
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ))
//             // Text(
//             //                     '75',
//             //                     style: TextStyle(
//             //                         color: const Color(0xFF0A090B),
//             //                         fontSize: 28,
//             //                         fontWeight: FontWeight.bold),
//             //                   ),
//             //                   Text(
//             //                     'глав',
//             //                     style: const TextStyle(
//             //                         color: Color(0xFF0A090B),
//             //                         fontSize: 15,
//             //                        ),
//             //                   ),

//             ),
//       ),
//     );
