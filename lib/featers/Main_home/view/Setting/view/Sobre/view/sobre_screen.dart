import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class SobreScreen extends StatefulWidget {
  const SobreScreen({super.key});

  @override
  State<SobreScreen> createState() => _SobreScreenState();
}

class _SobreScreenState extends State<SobreScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      appBar: appbar(method, context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/lll.png')),
            const SizedBox(height: 16.0),
            const Text(
              'О Manga Stream',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE56A14)
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Manga Stream - это приложение для чтения манги, которое предоставляет доступ к тысячам манга на различных языках. Мы стремимся сделать чтение манги увлекательным и удобным для всех любителей аниме и манги по всему миру.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Наша миссия:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE56A14)
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Предоставить легкий и доступный способ чтения манги в любое время и в любом месте.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Связаться с нами:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE56A14)
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Если у вас есть какие-либо вопросы, предложения или просто хотите поделиться своим мнением о нашем приложении, пожалуйста, свяжитесь с нами по адресу support@mangastream.com.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
