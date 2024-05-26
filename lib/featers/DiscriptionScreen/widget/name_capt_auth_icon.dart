import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:provider/provider.dart';


class NameCaptAuthIcon extends StatelessWidget {
  const NameCaptAuthIcon({super.key,
    required this.capt,
    required this.title, required this.type,required this.genros,required this.capitulos,required this.images,required this.sobre,

  });

  final int capt;
  final String title;
  final String type;
  final genros;
  final capitulos;
  final images;
  final sobre;



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              
              child: Text(
                title,
                maxLines: 3,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    
                    ),
              ),
            ),
            Text.rich(TextSpan(
              text: type,
              style: const TextStyle(color: Color(0xFF8B8887), fontSize: 19),
              children: [
                const TextSpan(
                  text: ' | ',
                   style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 19),
                ),
                TextSpan(
                  text: 'Cap. $capt'
                )
              ]
            ))
          ],
        ),
        GestureDetector(
          onTap: ()=>  context.read<DiscriptionsScreenSections>().namecaptauthiconbookmarkbutton(context, type, title, capitulos, capt, genros, images, sobre),
          child: const Icon(Icons.bookmark_outline, color: Color(0xFFEC7F40), size: 35,))
      ],
    );

  }
}




// Container NameCaptAuthIcon(BuildContext context, PageManagments method) => Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Lookism',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 26),
//               ),
//               Text.rich(TextSpan(
//                 text: 'Park Tae Jun',
//                 style: TextStyle(color: Color(0xFF8B8887), fontSize: 19),
//                 children: [
//                   TextSpan(
//                     text: ' | ',
//                      style: TextStyle(color: Color(0xFFE9E9EA), fontSize: 19),
//                   ),
//                   TextSpan(
//                     text: 'Cap. 469'
//                   )
//                 ]
//               ))
//             ],
//           ),
//           GestureDetector(
//             onTap: ()=> method.namecaptauthiconbookmarkbutton(context),
//             child: Icon(Icons.bookmark_outline, color: Color(0xFFEC7F40), size: 35,))
//         ],
//       ),
//     );
