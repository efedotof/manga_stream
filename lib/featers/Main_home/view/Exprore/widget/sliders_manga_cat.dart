


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class SliderManga extends StatelessWidget {
  const SliderManga({
    super.key,
    required this.method,
    required this.name,
    required this.type,
    required this.imageUrl,
    required this.dir,
  });

  final String name;
  final String type;
  final String imageUrl;
  final PageManagments method;
  final String dir;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: imageUrl != "" ? Colors.transparent : const Color(0xFF372060),
        image: imageUrl != ""
            ? DecorationImage(
                image: NetworkImage('https://remanga.org$imageUrl'),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFFFF9F4)),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_circle_outline_outlined,
                      color: Color(0xFFFA9549),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      type,
                      style: const TextStyle(color: Color(0xFFFA9549)),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(
                      0, 0, 0, 0.5), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          // const Text(
                          //   'Acao, Drama, Escolar, Sobrenatural',
                          //   style: TextStyle(color: Color(0xFF8B8887)),
                          // )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => method.slidermangaontap(context,dir, imageUrl),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFFFFFFF)),
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF2A2A2A),
                            )),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}



// Container slider_manga_cat(BuildContext context, PageManagments method)=> Container(
//   height: MediaQuery.of(context).size.height * 0.25,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(14),
//     color: Color(0xFF372060),
//   ),
//   child: Stack(
//     children: [
//       Positioned(
//         top: 10,
//         left: 10,
//         child: Container(
          
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Color(0xFFFFF9F4)
//           ),
//           padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.play_circle_outline_outlined, color: Color(0xFFFA9549),),
//               const SizedBox(width: 10,),
//               Text('Manga', style: TextStyle(color: Color(0xFFFA9549)),)
//             ],
//           ),
//         )
//       ),
//       Positioned(
//         bottom: 10,
//         left: 10,
//         right: 10,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Jujutsu Kaisen', style: TextStyle(color: Color(0xFFFFFFFF)),),
//                 Text('Acao, Drama, Escolar, Sobrenatural', style: TextStyle(color: Color(0xFF8B8887)),)
//               ],
//             ),
//             GestureDetector(
//               onTap: ()=> method.slidermangacatbutton(context),
//               child: Container(
                        
//                         decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: Color(0xFFFFFFFF)
//                         ),
//                         padding: const EdgeInsets.all(10),
//                         alignment: Alignment.center,
//                         child: Icon(Icons.arrow_forward, color: Color(0xFF2A2A2A),)
//                       ),
//             )




//           ],
//         )
//       ),

//     ],
//   ),
// );