


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key,
    required this.method,

  });
  final PageManagments method;

  
  @override
  Widget build(BuildContext context) {
    return Container(
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height * 0.25,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(14),
    color: const Color(0xFF131212),
  ),
  child: Stack(
    children: [
      Positioned(
        top: 10,
        left: 10,
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFFFF9F4)
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_circle_outline_outlined, color: Color(0xFFFA9549),),
              SizedBox(width: 10,),
              Text('Manga', style: TextStyle(color: Color(0xFFFA9549)),)
            ],
          ),
        )
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.1,
        left: 10,
        child: const Text('Encha sua estante de\nhistorias incriveis', style: TextStyle(color: Color(0xFFE3E2E3), fontSize: 20),),
      ),

      Positioned(
        bottom: 15,
        left: 10,
        right: 10,
        child: GestureDetector(
          onTap: ()=> method.vejamaisbutton(context),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('Veja mais', style: TextStyle(color: Color(0xFFDF711E), fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward, color: Color(0xFFDF711E),)
            ],  
          ),
        )
      ),

    ],
  ),
);
  }
}




// Container ExploreCard(BuildContext context,PageManagments method) => Container(
//   width: MediaQuery.of(context).size.width,
//   height: MediaQuery.of(context).size.height * 0.25,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(14),
//     color: Color(0xFF131212),
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
//         top: MediaQuery.of(context).size.height * 0.1,
//         left: 10,
//         child: Text('Encha sua estante de\nhistorias incriveis', style: TextStyle(color: Color(0xFFE3E2E3), fontSize: 20),),
//       ),

//       Positioned(
//         bottom: 15,
//         left: 10,
//         right: 10,
//         child: GestureDetector(
//           onTap: ()=> method.vejamaisbutton(context),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//                 Text('Veja mais', style: TextStyle(color: Color(0xFFDF711E), fontWeight: FontWeight.bold, fontSize: 18),),
//                 const SizedBox(width: 10,),
//                 Icon(Icons.arrow_forward, color: Color(0xFFDF711E),)
//             ],  
//           ),
//         )
//       ),

//     ],
//   ),
// );