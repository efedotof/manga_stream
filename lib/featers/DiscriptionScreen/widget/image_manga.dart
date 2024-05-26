
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

class ImageManga extends StatelessWidget {
  const ImageManga({super.key,
    required this.method,
    required this.imageUrl,
  });

  final PageManagments method;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
              color: imageUrl != "" ? Colors.transparent : const Color(0xFFD9381A),
              image: imageUrl != "" ? DecorationImage(
                image: NetworkImage('https://remanga.org$imageUrl'),
                fit: BoxFit.cover,
              ) : null,
          ),
      child: Stack(
        children: [
          Positioned(
              child:  SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
             
            
          )),
          
          Positioned(
              top: 30,
              left: 10,
              child: GestureDetector(
                onTap: () => method.popScreensToScreen(context),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFEF8F3)),
                  child: const Center(
                      child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFE85C13),
                  )),
                ),
              )),
          Positioned(
              top: 30,
              right: 10,
              child: GestureDetector(
                onTap: () {
                   context.read<DiscriptionsScreenSections>().shared();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape:  BoxShape.circle, color: Color(0xFFFEF8F3)),
                  child: const Center(
                      child: Icon(
                    Icons.share_outlined,
                    color: Color(0xFFE85C13),
                  )),
                ),
              )),
        ],
      ),
    );

  }
}



// Container ImageManga(BuildContext context, PageManagments method) => Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height * 0.5,
//       color: Color(0xFFD9381A),
//       child: Stack(
//         children: [
//           Positioned(
//               child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height * 0.5,
//             child: Expanded(
//                 child: PageView(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   color: Color(0xFFFDE8CC),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   color: Color(0xFFFBF60B),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   color: Color(0xFFB3ACC8),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   color: Color(0xFF2D58B9),
//                 ),
//               ],
//             )),
//           )),
          
//           Positioned(
//               top: 30,
//               left: 10,
//               child: GestureDetector(
//                 onTap: () => method.popScreensToScreen(context),
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Color(0xFFFEF8F3)),
//                   child: Center(
//                       child: Icon(
//                     Icons.arrow_back,
//                     color: Color(0xFFE85C13),
//                   )),
//                 ),
//               )),
//           Positioned(
//               top: 30,
//               right: 10,
//               child: GestureDetector(
//                 onTap: () => method.namecaptauthiconbookmarkbutton(context),
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: Color(0xFFFEF8F3)),
//                   child: Center(
//                       child: Icon(
//                     Icons.share_outlined,
//                     color: Color(0xFFE85C13),
//                   )),
//                 ),
//               )),
//         ],
//       ),
//     );
