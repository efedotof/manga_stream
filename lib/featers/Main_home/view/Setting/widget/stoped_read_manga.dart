import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class StopedReadManga extends StatelessWidget {
  const StopedReadManga({super.key,
    required this.method,
  });

  final PageManagments method;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () => method.stopedreadmangaonTap(context),
  child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF97316),
        ),
        
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 10,
              bottom: 20,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xFF374C7B)),
              ),
            ),
            Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width * 0.2,
                bottom: 20,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'One piece',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold),
                        ),
                        Text.rich(TextSpan(
                            text: 'Continue de onde parou.',
                            style: TextStyle(color: Color(0xFFF9DFCD)),
                            children: [
                              TextSpan(
                                text: 'Cap. 1032',
                                style: TextStyle(
                                    color: Color(0xFFF5DDCC),
                                    fontWeight: FontWeight.bold),
                              )
                            ]))
                      
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
);
  }
}



// GestureDetector stoped_read_manga(BuildContext context,PageManagments method) => GestureDetector(
//   onTap: () => method.stopedreadmangaonTap(context),
//   child: Container(
//         height: MediaQuery.of(context).size.height * 0.12,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: const Color(0xFFF97316),
//         ),
        
//         child: Stack(
//           children: [
//             Positioned(
//               top: 20,
//               left: 10,
//               bottom: 20,
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.13,
//                 height: MediaQuery.of(context).size.height * 0.05,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4),
//                     color: Color(0xFF374C7B)),
//               ),
//             ),
//             Positioned(
//                 top: 20,
//                 left: MediaQuery.of(context).size.width * 0.2,
//                 bottom: 20,
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'One piece',
//                           style: TextStyle(
//                               color: Color(0xFFFFFFFF),
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text.rich(TextSpan(
//                             text: 'Continue de onde parou.',
//                             style: TextStyle(color: Color(0xFFF9DFCD)),
//                             children: [
//                               TextSpan(
//                                 text: 'Cap. 1032',
//                                 style: TextStyle(
//                                     color: Color(0xFFF5DDCC),
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ]))
                      
//                       ],
//                     ),
//                   ],
//                 )),
//           ],
//         ),
//       ),
// );
