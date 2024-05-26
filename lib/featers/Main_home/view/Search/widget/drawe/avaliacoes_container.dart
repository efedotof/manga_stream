



import 'package:flutter/material.dart';
import 'package:manga_stream/methods/SearcheScreenModel.dart';
import 'package:provider/provider.dart';


class AvaliacoesContainer extends StatelessWidget {
  const AvaliacoesContainer({
    Key? key,
    required this.text,
    required this.name,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final String name;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<SearcheScreenModel>(context, listen: false).selectChip(name, backgroundColor);
      },
      child: Consumer<SearcheScreenModel>(
        builder: (context, selectedChipModel, _) {
          return Chip(
            shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14), // Указываете радиус скругления здесь
        side:  BorderSide.none
      ),
            backgroundColor:selectedChipModel.selectedNames.contains(name) ? selectedChipModel.backgroundColor : const Color(0xFFFDFDFD),
            avatar:  Icon(Icons.star_border, color:selectedChipModel.selectedNames.contains(name) ?Colors.white: const Color(0xFF3C3C3D)),
            label: Text(
              text,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF3C3C3D),
                fontWeight: FontWeight.bold,
              ),
            ),
            
            deleteIconColor:selectedChipModel.selectedNames.contains(name) ?Colors.white: const Color(0xFFF98A3B),
          );
        },
      ),
    );
  }
}
