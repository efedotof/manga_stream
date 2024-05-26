import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF97316),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/threepagephoto.png', width: MediaQuery.of(context).size.width , height: MediaQuery.of(context).size.height * 0.5,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Funcionalidades incriveis para\numa melhor leitura e imersao', style: TextStyle(color: Color(0xFFFEE3D1), fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Tenha foco total na sua leitura com o modo de\nimersao, voce tambem pode ler sem scrollar, e\nso selecionar o que deseja ler e apreciar.', style: TextStyle(color: Color(0xFFFDC6A1), fontSize: 15,),)
              ],
            ),
          ),
         

        ],
      )
    );
  }
}