


import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context, PageManagments method) => AppBar(
              automaticallyImplyLeading: false,
                title: const Text(
                  "Profile",
                  style: TextStyle(color: Color(0xFF232222)),
                ),
                leading: GestureDetector(
                  onTap: () => method.popScreensToScreen(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF232222),
                  ),
                ),
              );