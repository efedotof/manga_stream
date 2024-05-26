import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF97316),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onepagephotos.png', width: MediaQuery.of(context).size.width , height: MediaQuery.of(context).size.height * 0.5,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('O maior e melhor catalogo de\nleitura otaku', style: TextStyle(color: Color(0xFFFEE3D1), fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Manga, Manhwas, Manhuas e Webtoons tudo\njunto em um unico lugar. Escolha o quer]nler e divirta-se', style: TextStyle(color: Color(0xFFFDC6A1), fontSize: 17,),)
              ],
            ),
          ),
         

        ],
      )
    );
  }
}