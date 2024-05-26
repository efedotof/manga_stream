import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';


class ButtonFiltrar extends StatelessWidget {
  const ButtonFiltrar({super.key});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>context.watch<PageManagments>().buttonfiltrar(context),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFFE56A14),
            border: Border.all(color: const Color(0xFFE8AD83), width: 1)),
        child: const Center(
            child: Text(
          'Filtrar',
          style: TextStyle(color: Color(0xFFE8D9CD)),
        )),
      ),
    );
  }
}



// GestureDetector ButtonFiltrar(context,method) => GestureDetector(
//       onTap: () =>method.buttonfiltrar(),
//       child: Container(
//         height: MediaQuery.of(context).size.width * 0.14,
//         child: const Center(
//             child: Text(
//           'Filtrar',
//           style: TextStyle(color: Color(0xFFE8D9CD)),
//         )),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             color: Color(0xFFE56A14),
//             border: Border.all(color: const Color(0xFFE8AD83), width: 1)),
//       ),
//     );
