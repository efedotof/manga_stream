import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

class LuncamentosMangasContainer extends StatelessWidget {
  const LuncamentosMangasContainer({
    super.key,
    required this.method,
    required this.name,
    required this.imageUrlMin,
    required this.imageUrlMax,
    required this.dir, 
  });

  final PageManagments method;
  final String name;
  final String imageUrlMin;
  final String imageUrlMax;
  final String dir;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => method.luncamentosmangascontainerbutton(context,dir,imageUrlMin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: imageUrlMax != ""
                    ? Colors.transparent
                    : const Color(0xFF7A7878),
                image: imageUrlMax != ""
                    ? DecorationImage(
                        image:
                            NetworkImage('https://remanga.org$imageUrlMax'),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(9),
              //   color: const Color(0xFF7A7878)
              // ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: imageUrlMin != ""
                        ? Colors.transparent
                        : const Color(0xFF7A7878),
                    image: imageUrlMin != ""
                        ? DecorationImage(
                            image: NetworkImage(
                                'https://remanga.org$imageUrlMin'),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(5),
                  //   color: const Color(0xFF7A7878),
                  // ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(width: MediaQuery.of(context).size.width * 0.5,child: Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),maxLines: 5,)),
                    const SizedBox(
                      height: 5,
                    ),
                    // const Text(
                    //   'Aventura, Fantasia,...',
                    //   style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),
                    // )
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

// Padding luncamentos_mangas_container(
//         BuildContext context, PageManagments method) =>
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: GestureDetector(
//         onTap: () => method.luncamentosmangascontainerbutton(context),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.6,
//               height: MediaQuery.of(context).size.height * 0.3,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(9),
//                   color: const Color(0xFF7A7878)),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.09,
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: const Color(0xFF7A7878),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'One Pice',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       'Aventura, Fantasia,...',
//                       style: TextStyle(color: Color(0xFF8B8887), fontSize: 14),
//                     )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
// //color: Color(0xFF1E1D1F),