import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
        appBar: appbar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              ProfileContainer(method:method),
              const SizedBox(
                height: 20,
              ),
              StopedReadManga(method:method),
              const SizedBox(
                height: 20,
              ),
              NotificationRowButton(method: method,),
              EstanteButton(method:method,iconData:  Icons.library_books_outlined, text: 'Estante'),

              IdiomaButton(method: method, iconData:  Icons.language_outlined,text:  'Idiome'),
              ModoDark(method:method,),
              const SizedBox(
                height: 40,
              ),
              SegirancaButton(method:method,iconData:Icons.settings,text: 'Settings'),
              CentralButton(method:method,iconData: Icons.feedback_outlined, text: 'Central de ajuda'),
              const SizedBox(
                height: 30,
              ),
              ExitButton(method: method),
            ],
          ),
        )));
  }
}
