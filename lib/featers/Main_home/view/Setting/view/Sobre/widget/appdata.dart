import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(PageManagments method, BuildContext context) => AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        "Settings",
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => method.popScreensToScreen(context),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
    );
