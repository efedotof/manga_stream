import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';



class GoRegistrationText extends StatelessWidget {
  const GoRegistrationText({super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Esquieceu sua senha? ',
          style: TextStyle(color: Color(0xFFB5B5B5)),
        ),
        GestureDetector(
          onTap:()=> Provider.of<AuthScreenModel>(context, listen: false).recuperarsanhabutton(context),
          child: const Text(
            'recuperar sanha',
            style:
                TextStyle(color: Color(0xFFFBA467), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

  }
}


// Row GoRegistrationText(PageManagments method, BuildContext context) => Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           'Esquieceu sua senha? ',
//           style: TextStyle(color: Color(0xFFB5B5B5)),
//         ),
//         GestureDetector(
//           onTap:()=> method.recuperarsanhabutton(context),
//           child: const Text(
//             'recuperar sanha',
//             style:
//                 TextStyle(color: Color(0xFFFBA467), fontWeight: FontWeight.bold),
//           ),
//         )
//       ],
//     );
