import 'package:flutter/material.dart';
import 'package:manga_stream/methods/descriptionscreen_model.dart';
import 'package:provider/provider.dart';


class CapitolosContainer extends StatelessWidget {
  const CapitolosContainer({
    super.key,required this.capt, required this.authod, required this.data,

  });

  final String capt;
  final String authod;
  final String data;


  String formatDate(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;
    return '$day/$month/$year';
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<DiscriptionsScreenSections>().capitoloscontainerontap(context),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.15,
                  //   height: MediaQuery.of(context).size.height * 0.1,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     color: const Color(0xFF7A7878),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Capitulos $capt',
                        style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        authod,
                        style: const TextStyle(color: Color(0xFF888889), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        formatDate(data),
                        style: const TextStyle(color: Color(0xFFC5C5C5), fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xFFEC7F40),
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}



// Padding CapitolosContainer(BuildContext context, PageManagments method) => Padding(
//   padding: const  EdgeInsets.symmetric(vertical: 15),
//   child: GestureDetector(
//     onTap: () => method.capitoloscontainerontap(context),
//     child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.15,
//                       height: MediaQuery.of(context).size.height * 0.1,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: const Color(0xFF7A7878),
//                       ),
//                     ),
                          
//                     const SizedBox(width: 10,),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                           Text('Capitulos 01', style: TextStyle(color: Color(0xFF1E1D1F), fontWeight: FontWeight.bold, fontSize: 18),),
//                           SizedBox(height: 5,),
//                           Text('Mudar', style: TextStyle(color: Color(0xFF888889), fontSize: 16),),
//                            SizedBox(height: 5,),
//                           Text('23/02/2023', style: TextStyle(color: Color(0xFFC5C5C5), fontSize: 14),)
//                       ],
//                     ),
//                   ],
//                 ),
//                const  Icon(Icons.remove_red_eye_outlined, color: Color(0xFFEC7F40), size: 30,)
        
//               ],
//             ),
//   ),
// );