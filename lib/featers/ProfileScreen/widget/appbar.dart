
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

AppBar appbar(BuildContext context, PageManagments method) => AppBar(
  backgroundColor: const Color(0xFFF97316),
              automaticallyImplyLeading: false,
              elevation: 0,
                title: const Text(
                  "Profile",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
                leading: GestureDetector(
                  onTap: () => method.popScreensToScreen(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              );