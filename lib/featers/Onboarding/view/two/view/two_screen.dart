import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF97316),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/twopagephoto.png', width: MediaQuery.of(context).size.width , height: MediaQuery.of(context).size.height * 0.5,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Adicione a sua estante suas\nleituras favoritas', style: TextStyle(color: Color(0xFFFEE3D1), fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Crie estantes para estar deixando de forma\nmais organizadas suas leituras, crie quanto\nestantes quiser e aproveite', style: TextStyle(color: Color(0xFFFDC6A1), fontSize: 17,),)
              ],
            ),
          ),
         

        ],
      )
    );
  }
  
}