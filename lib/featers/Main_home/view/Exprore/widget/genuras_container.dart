

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/ExploreScreenModel.dart';
import 'package:provider/provider.dart';


class GenurasContainer extends StatelessWidget {
  const GenurasContainer({super.key,
 
  });



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () => context.read<MainhomeExploreScreenSections>().gofiltros(context),
  child: Container(
    width: MediaQuery.of(context).size.width * 0.2,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xFFF97316),
    ),
    alignment: Alignment.center,
    child: const Icon(Icons.settings, color: Color(0xFFFFF9F4),),
    
  ),
);
  }
}


// GestureDetector GenurasContainer(BuildContext context,PageManagments method) => GestureDetector(
//   onTap: () => method.gofiltros(context),
//   child: Container(
//     width: MediaQuery.of(context).size.width * 0.2,
//     padding: const EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       color: const Color(0xFFF97316),
//     ),
//     alignment: Alignment.center,
//     child: const Icon(Icons.settings, color: Color(0xFFFFF9F4),),
    
//   ),
// );


