
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';


AppBar appbar (BuildContext context,)=> AppBar(
          backgroundColor: const Color(0xFFF97316),
          automaticallyImplyLeading: false,
          leading:GestureDetector(
            onTap: ()=> Provider.of<PageManagments>(context, listen: false).popScreensToScreen(context),
            child: const Icon(Icons.arrow_back),
          ),
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
        );