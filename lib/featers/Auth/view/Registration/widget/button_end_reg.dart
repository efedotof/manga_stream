import 'package:flutter/material.dart';
import 'package:manga_stream/methods/AuthScreenModel.dart';
import 'package:provider/provider.dart';


class ButtonEndReg extends StatelessWidget {
  const ButtonEndReg({super.key,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Provider.of<AuthScreenModel>(context, listen: false).cadastrarsebuttin(context),
      child:   Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.width * 0.14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFFF97316)),
        child:  context.watch<AuthScreenModel>().isloadbutton
            ? const CircularProgressIndicator(
                color: Color(0xFFFCDFC9), strokeWidth: 2)
            : const Text(
          'Cadastrar-se',
          style: TextStyle(color: Color(0xFFFCDFC9)),
        ),
      ),
    );
  }
}



// GestureDetector ButtonEndReg(BuildContext context, PageManagments method) => GestureDetector(
//       onTap: () => method.cadastrarsebuttin(context),
//       child: Container(
//         alignment: Alignment.center,
//         height: MediaQuery.of(context).size.width * 0.14,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             color: const Color(0xFFF97316)),
//         child: const Text(
//           'Cadastrar-se',
//           style: TextStyle(color: Color(0xFFFCDFC9)),
//         ),
//       ),
//     );
