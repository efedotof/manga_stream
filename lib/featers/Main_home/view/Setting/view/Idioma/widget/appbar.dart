import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(
  BuildContext context,
  PageManagments method,
) =>
    AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        "Language",
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => method.popScreensToScreen(context),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
    );
