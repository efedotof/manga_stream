import 'package:flutter/material.dart';

class ReviewRecends extends StatelessWidget {
  const ReviewRecends({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: MediaQuery.of(context).size.height * 0.2,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            '4.7',
            style: TextStyle( fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: List.generate(5, (index) => const Icon(Icons.star, color: Color(0xFFF97316),)),
              ),
              const Text('(5.0 mil avaliacoes)', style: TextStyle(color: Color(0xFF888889), fontSize: 16),),
            ],
          ),
        ],
        
      
      ),
      Column(
        children: [
          Row(
            children: [
               const Text(
              '5',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(width: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFF85E00)
              ),
            ),
            ],
          ),
          Row(
            children: [
               const Text(
              '4',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(width: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFF85E00)
              ),
            ),
            ],
          ),
          Row(
            children: [
               const Text(
              '3',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(width: 10,),
            Container(
             width: MediaQuery.of(context).size.width * 0.4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFF85E00)
              ),
            ),
            ],
          ),
          Row(
            children: [
               const Text(
              '2',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(width: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFF85E00)
              ),
            ),
            ],
          ),
          Row(
            children: [
               const Text(
              '1',
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(width: 10,),
            Container(
             width: MediaQuery.of(context).size.width * 0.4,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFF85E00)
              ),
            ),
            ],
          ),
          
        ],
      )





    ],
  ),
);
  }
}


// SizedBox ReviewRecends(context) => SizedBox(
//   height: MediaQuery.of(context).size.height * 0.2,
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           const Text(
//             '4.7',
//             style: TextStyle( fontWeight: FontWeight.bold, fontSize: 40),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 children: List.generate(5, (index) => const Icon(Icons.star, color: Color(0xFFF97316),)),
//               ),
//               const Text('(5.0 mil avaliacoes)', style: TextStyle(color: Color(0xFF888889), fontSize: 16),),
//             ],
//           ),
//         ],
        
      
//       ),
//       Column(
//         children: [
//           Row(
//             children: [
//                Text(
//               '5',
//               style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             const SizedBox(width: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4,
//               height: 4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xFFF85E00)
//               ),
//             ),
//             ],
//           ),
//           Row(
//             children: [
//                Text(
//               '4',
//               style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             const SizedBox(width: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4,
//               height: 4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xFFF85E00)
//               ),
//             ),
//             ],
//           ),
//           Row(
//             children: [
//                Text(
//               '3',
//               style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             const SizedBox(width: 10,),
//             Container(
//              width: MediaQuery.of(context).size.width * 0.4,
//               height: 4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xFFF85E00)
//               ),
//             ),
//             ],
//           ),
//           Row(
//             children: [
//                Text(
//               '2',
//               style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             const SizedBox(width: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4,
//               height: 4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xFFF85E00)
//               ),
//             ),
//             ],
//           ),
//           Row(
//             children: [
//                Text(
//               '1',
//               style: const TextStyle(color: Color(0xFF1D1C1D), fontWeight: FontWeight.bold, fontSize: 22),
//             ),
//             const SizedBox(width: 10,),
//             Container(
//              width: MediaQuery.of(context).size.width * 0.4,
//               height: 4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xFFF85E00)
//               ),
//             ),
//             ],
//           ),
          
//         ],
//       )





//     ],
//   ),
// );