

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';


class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key,
    required this.method,
    required this.name,
  
  });

  final PageManagments method;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: GestureDetector(
    onTap: () => method.categoriescontainerbutton(context),
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFFDFDFD),
            border: Border.all(
              color: const Color(0xFFFEEEE3),
              width: 1
            )
          ),
          // child: Image.asset(assetsIcon, color: const Color(0xFFF85807), width: 20,height: 20,),


          // child: Icon(Icons.aspect_ratio, color: Color(0xFFF85807), size: 30,),
        ),
    
         Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 15),)
    
    
    
    
      ],
    ),
  ),
);
  }
}



// Padding CategoriesContainer(BuildContext context, PageManagments method, name, ) => Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 15),
//   child: GestureDetector(
//     onTap: () => method.categoriescontainerbutton(context),
//     child: Column(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width * 0.1,
//           height: MediaQuery.of(context).size.height * 0.1,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: const Color(0xFFFDFDFD),
//             border: Border.all(
//               color: const Color(0xFFFEEEE3),
//               width: 1
//             )
//           ),
//           // child: Image.asset(assetsIcon, color: const Color(0xFFF85807), width: 20,height: 20,),


//           // child: Icon(Icons.aspect_ratio, color: Color(0xFFF85807), size: 30,),
//         ),
    
//          Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 15),)
    
    
    
    
//       ],
//     ),
//   ),
// );

// ///color: Color.fromARGB(255, 16, 13, 19),