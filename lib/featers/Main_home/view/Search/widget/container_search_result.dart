import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';


class MangasResultContainer extends StatelessWidget {
  const MangasResultContainer({super.key,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.dir,
  });

  final String name;
  final String imageUrl;
  final String type;
  final String dir;



  
 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<PageManagments>().mangascontainersbutton(context, dir, imageUrl),
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.3,
          maxHeight: MediaQuery.of(context).size.height * 0.45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: imageUrl != "" ? Colors.transparent : const Color(0xFF92CB63),
                  image: imageUrl != "" ? DecorationImage(
                    image: NetworkImage('https://remanga.org$imageUrl'),
                    fit: BoxFit.cover,
                  ) : null,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 5,bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFFFF9F4),
                      ),
                      child: Text(type, style: const TextStyle(color: Color(0xFFFBA160), fontWeight: FontWeight.bold),),
                    )
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.43,child: Text(name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),maxLines: 5,)),
                   
                    
                    // Text(genre, style: const TextStyle(color: Color(0xFF8B8887), fontSize: 14),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}