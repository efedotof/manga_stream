
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context,PageManagments method) => AppBar(
  backgroundColor: Colors.transparent,
  automaticallyImplyLeading: false,
  title: const Row(
            children: [
              Text(
                'Manga',
                style: TextStyle(),
              ),
              Text(
                ' Stream',
                style: TextStyle(color: Color(0xFFFA7112)),
              )
            ],
          ),

  actions: [
    GestureDetector(
      onTap: ()=> method.navigationnotificbutton(context),
      child: Stack(
        children: [
          const Icon(Icons.notifications_outlined, color: Color(0xFFF9742A), size: 30,),
          Positioned(
            right: 3,
            top: 0,
            child: Container(
              width: 7,
              height: 7,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFB934B)
              ),
          ))
      
        ],
      ),
    ),
    const SizedBox( width: 10,)
  ],
);


///color: Color(0xFF0A090B)