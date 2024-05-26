import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class ChosingCategoriesScreen extends StatefulWidget {
  const ChosingCategoriesScreen({super.key});

  @override
  State<ChosingCategoriesScreen> createState() => _ChosingCategoriesScreenState();
}

class _ChosingCategoriesScreenState extends State<ChosingCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child:Text('Center SplashScreen')
      )
    );
  }
}



