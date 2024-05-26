import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

class ButtonLogVk extends StatelessWidget {
  const ButtonLogVk({super.key,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                    onTap: () => context.watch<AuthScreenModel>().loginVKID(context),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFF0077FF)),
                      child: const  Text(
                                              'Войти с VK ID',
                                              style: TextStyle(color: Color(0xFFFFFFFF)),
                                            ),
                    ),
                  );
  }
}


// GestureDetector ButtonLogVk(BuildContext context, PageManagments method) => GestureDetector(
//                     onTap: () => method.loginVKID(context),
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: MediaQuery.of(context).size.width * 0.14,
//                       child: const  Text(
//                                               'Войти с VK ID',
//                                               style: TextStyle(color: Color(0xFFFFFFFF)),
//                                             ),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(18),
//                           color: const Color(0xFF0077FF)),
//                     ),
//                   );