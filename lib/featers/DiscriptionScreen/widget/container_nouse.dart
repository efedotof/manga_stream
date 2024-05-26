



import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:provider/provider.dart';

class ContainerNouse extends StatelessWidget {
  const ContainerNouse({super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFFEF8F3),
        border: Border.all(
          color: const Color(0xFFFEDFCA),
          width: 1
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Novos capitulos',
                style: TextStyle(
                    color: Color(0xFFEC7F40),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text.rich(TextSpan(
                text: 'Quinta - Feira',
                style: TextStyle(color: Color(0xFF8B8887), fontSize: 16),
                children: [
                  TextSpan(
                    text: ' * ',
                     style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 16),
                  ),
                  TextSpan(
                    text: '18 horas'
                  )
                ]
              ))
            ],
          ),
          GestureDetector(
            onTap: () =>  context.read<DiscriptionsScreenSections>().containernousenotificationsbutton(context),
            child: const Icon(Icons.notifications_outlined, color: Color(0xFFEC7F40), size: 35,))
        ],
      ),
    );
  }
}

// Container ContainerNouse(BuildContext context, PageManagments method) => Container(
//   padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: Color(0xFFFEF8F3),
//         border: Border.all(
//           color: Color(0xFFFEDFCA),
//           width: 1
//         )
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Novos capitulos',
//                 style: TextStyle(
//                     color: Color(0xFFEC7F40),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//               Text.rich(TextSpan(
//                 text: 'Quinta - Feira',
//                 style: TextStyle(color: Color(0xFF8B8887), fontSize: 16),
//                 children: [
//                   TextSpan(
//                     text: ' * ',
//                      style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 16),
//                   ),
//                   TextSpan(
//                     text: '18 horas'
//                   )
//                 ]
//               ))
//             ],
//           ),
//           GestureDetector(
//             onTap: () => method.containernousenotificationsbutton(context),
//             child: Icon(Icons.notifications_outlined, color: Color(0xFFEC7F40), size: 35,))
//         ],
//       ),
//     );