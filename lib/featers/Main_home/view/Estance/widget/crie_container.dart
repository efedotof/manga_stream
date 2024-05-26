




import 'package:flutter/material.dart';

class CrieContainer extends StatelessWidget {
  const CrieContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFF9F4)
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: 
              const Icon(Icons.library_books_outlined, color: Color(0xFFFA9549),size: 25,),
)

     
   
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
                Text('Crie estantes para seus favs', style: TextStyle(color: Color(0xFFFFFFFF)),),
                Text('E tenha uma melhor organizacao', style: TextStyle(color: Color(0xFFF9DFCD)),)
              ],
            ),
            



          ],
        )
      ),

    ],
  ),
);

  }
}


// Container CrieContainer(context)=> Container(
//   height: MediaQuery.of(context).size.height * 0.12,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: Color(0xFFF97316),
//   ),
//   child: Stack(
//     children: [
//       Positioned(
//         top: 20,
//         left: 10,
//         bottom: 20,
//         child: Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Color(0xFFFFF9F4)
//           ),
//           padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//           child: 
//               Icon(Icons.library_books_outlined, color: Color(0xFFFA9549),size: 25,),
// )

     
   
//       ),
//       Positioned(
//         top: 20,
//         left: MediaQuery.of(context).size.width * 0.2,
//         bottom: 20,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Crie estantes para seus favs', style: TextStyle(color: Color(0xFFFFFFFF)),),
//                 Text('E tenha uma melhor organizacao', style: TextStyle(color: Color(0xFFF9DFCD)),)
//               ],
//             ),
            



//           ],
//         )
//       ),

//     ],
//   ),
// );

