import 'package:flutter/material.dart';

// ThemeData? theme() => ThemeData(
//       colorScheme: ColorScheme.fromSeed(
//         seedColor: const Color(0xFFF4F4F6),
//         brightness: Brightness.light,
//       ),
     
//       textTheme: const TextTheme(
//           titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
//     );

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFF4F4F6),
    brightness: Brightness.dark,
  ),
  bottomNavigationBarTheme: bottomtheme,



  
);

final ligthTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFF4F4F6),
    brightness: Brightness.light,
  ),
  bottomNavigationBarTheme: bottomtheme,
);



const bottomtheme =  BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFFFFFFF),
          selectedIconTheme: IconThemeData(
            color: Color(0xFFF29549),
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFF9F9F9F),
          ));