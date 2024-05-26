import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';

import 'package:provider/provider.dart';


class ContainerEstantes extends StatelessWidget {
  const ContainerEstantes({super.key,
    required this.method,
  });

  final PageManagments method;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<MainhomeExploreScreenSections>().containerestantesbutton(context),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          
          border: Border.all(color: const Color(0xFFFEDBC2), width: 1),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 20,
                bottom: 20,
                left: 1,
                child: Container(
                  width: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color(0xFFFA8244),
                  ),
                )),
            const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xFFFA8244),
                )),
            Positioned(
                left: 20,
                top: 10,
                right: 20,
                bottom: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xFF1CDCFB),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(
                              2,
                              (index) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 2),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFDFDFD),
                                          border: Border.all(
                                              color: const Color(0xFFFEE3D1),
                                              width: 0.5)),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Todos',
                                        style:
                                            TextStyle(color: Color(0xFFF98A3B)),
                                      ),
                                    ),
                                  )),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pancadaria',
                              style: TextStyle(
                                  
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              'Manga, Manhwa, Webtoon, Manhua',
                              style: TextStyle(
                                  color: Color(0xFF8B8887), fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            const Positioned(
                bottom: 10,
                right: 10,
                child: Text.rich(TextSpan(
                    text: '12 ',
                    style: TextStyle(
                        
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    children: [
                      TextSpan(
                          text: 'Titlos',
                          style: TextStyle(
                              color: Color(0xFFA0A0A0), fontSize: 18)),
                    ]))),
          ],
        ),
      ),
    );

  }
}




// GestureDetector ContainerEstantes(BuildContext context,PageManagments method) => GestureDetector(
//       onTap: () => method.containerestantesbutton(context),
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.2,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
          
//           border: Border.all(color: Color(0xFFFEDBC2), width: 1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//                 top: 20,
//                 bottom: 20,
//                 left: 1,
//                 child: Container(
//                   width: 5,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(11),
//                     color: Color(0xFFFA8244),
//                   ),
//                 )),
//             Positioned(
//                 top: 10,
//                 right: 10,
//                 child: Icon(
//                   Icons.more_vert,
//                   color: Color(0xFFFA8244),
//                 )),
//             Positioned(
//                 left: 20,
//                 top: 10,
//                 right: 20,
//                 bottom: 10,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.17,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(9),
//                         color: Color(0xFF1CDCFB),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: List.generate(
//                               2,
//                               (index) => Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 2),
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.2,
//                                       padding: EdgeInsets.all(10),
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           color: const Color(0xFFFDFDFD),
//                                           border: Border.all(
//                                               color: Color(0xFFFEE3D1),
//                                               width: 0.5)),
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         'Todos',
//                                         style:
//                                             TextStyle(color: Color(0xFFF98A3B)),
//                                       ),
//                                     ),
//                                   )),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Pancadaria',
//                               style: TextStyle(
                                  
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18),
//                             ),
//                             Text(
//                               'Manga, Manhwa, Webtoon, Manhua',
//                               style: TextStyle(
//                                   color: Color(0xFF8B8887), fontSize: 14),
//                             )
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 )),
//             Positioned(
//                 bottom: 10,
//                 right: 10,
//                 child: Text.rich(TextSpan(
//                     text: '12 ',
//                     style: TextStyle(
                        
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20),
//                     children: [
//                       TextSpan(
//                           text: 'Titlos',
//                           style: TextStyle(
//                               color: Color(0xFFA0A0A0), fontSize: 18)),
//                     ]))),
//           ],
//         ),
//       ),
//     );


///color: const Color(0xFFFFFFFF),
///color: Color(0xFF1E1D1F),
///color: Color(0xFF0E0E0F),