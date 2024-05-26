import 'package:flutter/material.dart';
import 'package:manga_stream/methods/SearcheScreenModel.dart';
import 'package:provider/provider.dart';


class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: const EdgeInsets.all(8),
  decoration: const BoxDecoration(
    
    border: Border(
      bottom: BorderSide(
        color:  Color(0xFFFEE1CF),
        width: 1,
      ),
    ),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: TextFormField(
          onChanged: (text){
            context.read<SearcheScreenModel>().getSearche(text);
          },
          onFieldSubmitted:(value) {
            if(value != '') context.read<SearcheScreenModel>().saveBoxSearcheModel(value);
          },
          onSaved:(newValue) {
             if(newValue != '') context.read<SearcheScreenModel>().saveBoxSearcheModel(newValue!);
          },
          controller: context.watch<SearcheScreenModel>().searchecontroller,
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Сегодня буду читать...',
            hintStyle: TextStyle(
              color: Color(0xFFC0C0C0),
            ),
          ),
        ),
      ),
      // const Icon(Icons.menu, color: Color(0xFFF96A07)),
    ],
  ),
);
  }
}




// Container SearchField(BuildContext context) => Container(
//   padding: const EdgeInsets.all(8),
//   decoration: const BoxDecoration(
    
//     border: Border(
//       bottom: BorderSide(
//         color:  Color(0xFFFEE1CF),
//         width: 1,
//       ),
//     ),
//   ),
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Expanded(
//         child: TextFormField(
//           decoration: const InputDecoration(
//             border: InputBorder.none,
//             focusedBorder: InputBorder.none,
//             enabledBorder: InputBorder.none,
//             errorBorder: InputBorder.none,
//             disabledBorder: InputBorder.none,
//             hintText: 'Hoje vou ler...',
//             hintStyle: TextStyle(
//               color: Color(0xFFC0C0C0),
//             ),
//           ),
//         ),
//       ),
//       const Icon(Icons.search_rounded, color: Color(0xFFF96A07)),
//     ],
//   ),
// );


///color:  Color(0xFFFEFEFE),