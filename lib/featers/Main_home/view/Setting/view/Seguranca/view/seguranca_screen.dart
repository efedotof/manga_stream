import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class SegurancaScreen extends StatefulWidget {
  const SegurancaScreen({super.key});

  @override
  State<SegurancaScreen> createState() => _SegurancaScreenState();
}

class _SegurancaScreenState extends State<SegurancaScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      appBar: appbar(context, method),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        profileNameEmail(
                            context,
                            method,
                            'https://avatars1.githubusercontent.com/u/37634751?s=400&u=f9f573e7ceadee6abe4eb349589c632098f1f07b&v=4',
                            'Amauri Junior',
                            'email@gmail.com'),
                        Positioned(
                            right: 0,
                            bottom: 50,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF97316),
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                sizedboxemailnamebirth(context, 'Name', 'Name'),
                const SizedBox(
                  height: 10,
                ),
                sizedboxemailnamebirth(context, 'Email', 'vine99@gmail.com'),
                const SizedBox(
                  height: 10,
                ),
                sizedboxemailnamebirth(context, 'Birthday', 'Birthday'),
                const SizedBox(
                  height: 10,
                ),
              ]))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFF97316),
        onPressed: () {},
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
