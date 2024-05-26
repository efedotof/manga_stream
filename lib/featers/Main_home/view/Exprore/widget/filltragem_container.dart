




import 'package:flutter/material.dart';

class FiltragemContainer extends StatelessWidget {
  const FiltragemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: MediaQuery.of(context).size.height * 0.2,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color(0xFFF97316),
  ),
  child: Stack(
    children: [
      Positioned(
        top: 20,
        left: 10,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFF9F4)
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: 
              const Icon(Icons.settings, color: Color(0xFFFA9549),size: 25,),
)

     
   
      ),

      Positioned(
        top: 10,
        right: 10,
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFFA8F44)
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: 
              const Text('Filtragem', style: TextStyle(color: Color(0xFFFEEEE0)),)

        )
      ),


      const Positioned(
        bottom: 14,
        left: 10,
        right: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nao encontrou algo para ler?', style: TextStyle(color: Color(0xFFFFFFFF)),),
                Text('Utilize os filtros para te ajudar e divirta-se\ncom sua leitura', style: TextStyle(color: Color(0xFFF9DFCD)),)
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


// Container FiltragemContainer(context)=> Container(
//   height: MediaQuery.of(context).size.height * 0.2,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: Color(0xFFF97316),
//   ),
//   child: Stack(
//     children: [
//       Positioned(
//         top: 20,
//         left: 10,
//         child: Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Color(0xFFFFF9F4)
//           ),
//           padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//           child: 
//               Icon(Icons.settings, color: Color(0xFFFA9549),size: 25,),
// )

     
   
//       ),

//       Positioned(
//         top: 10,
//         right: 10,
//         child: Container(
          
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Color(0xFFFA8F44)
//           ),
//           padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//           child: 
//               Text('Filtragem', style: TextStyle(color: Color(0xFFFEEEE0)),)

//         )
//       ),


//       Positioned(
//         bottom: 14,
//         left: 10,
//         right: 10,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Nao encontrou algo para ler?', style: TextStyle(color: Color(0xFFFFFFFF)),),
//                 Text('Utilize os filtros para te ajudar e divirta-se\ncom sua leitura', style: TextStyle(color: Color(0xFFF9DFCD)),)
//               ],
//             ),
            



//           ],
//         )
//       ),

//     ],
//   ),
// );

