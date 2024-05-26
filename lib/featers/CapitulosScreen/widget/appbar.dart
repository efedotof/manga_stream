import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context, PageManagments method) => AppBar(
              automaticallyImplyLeading: false,
                title: const Text(
                  "Capitulos",
             
                ),
                actions: [
                  GestureDetector(
                    onTap: (){},
                    child: const Row(
                      children: [
                        Text('Decrescente', style: TextStyle(color: Color(0xFFA8A8A8)),),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFFA8A8A8) )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,)
                  
                ],
                leading: GestureDetector(
                  onTap: () => method.popScreensToScreen(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFFA8A8A8),
                  ),
                ),
              );