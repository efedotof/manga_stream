import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context, PageManagments methods) => AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: const Text(
        'Notificacoes'
      ),
      leading: GestureDetector(
        onTap: ()=> methods.popScreensToScreen(context),
        child: const Icon(Icons.arrow_back,),
      ),
    );
