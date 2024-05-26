
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/AuthScreenModel.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    // var method = context.watch<AuthScreenModel>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF97316),
          automaticallyImplyLeading: false,
          title: const Row(
            children: [
              Text(
                'Manga',
                style: TextStyle(color: Color(0xFFFEFCF9)),
              ),
              Text(
                ' Stream',
                style: TextStyle(color: Color(0xFFFB934B)),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xFFF97316),
        body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tehna na\npalma das\nsuas maos a\nmaior e melhor\nestante otaku\nde todas',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Provider.of<AuthScreenModel>(context, listen: false).loginbutton(context),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFFE8E8E8)),
                      child: const Center(
                          child: Text(
                        'Login',
                        style: TextStyle(color: Color(0xFFE59863)),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: ()=> Provider.of<AuthScreenModel>(context, listen: false).cadastrobutton(context),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFFE56A14),
                          border: Border.all(
                              color: const Color(0xFFE8AD83), width: 1)),
                      child: const Center(
                          child: Text(
                        'Cadastro',
                        style: TextStyle(color: Color(0xFFE8D9CD)),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
