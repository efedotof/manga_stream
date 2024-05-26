import 'package:flutter/material.dart';
import 'package:manga_stream/methods/pagemanagment.dart';

Column profileNameEmail(
        BuildContext context, PageManagments method, image, name, email) =>
    Column(
      children: [
        CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              image
               )),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Color(0xFF1E1D1F),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              email,
              style: const TextStyle(color: Color(0xFF8B8887), fontSize: 14),
            )
          ],
        ),
      ],
    );
