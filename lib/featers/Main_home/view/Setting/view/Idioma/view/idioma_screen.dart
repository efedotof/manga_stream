import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class IdiomaScreen extends StatefulWidget {
  const IdiomaScreen({super.key});

  @override
  State<IdiomaScreen> createState() => _IdiomaScreenState();
}

class _IdiomaScreenState extends State<IdiomaScreen> {
  bool checkBoxBooleanValueVariable = false;
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
        appBar: appbar(context, method),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01),
                          child:  SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Russian',
                                  style: TextStyle(fontSize: 22),
                                ),
                                Checkbox(
                                  shape: const CircleBorder(),
                                  value: checkBoxBooleanValueVariable,
                                  onChanged: (inputValue) {
                                    setState(() {
                                      checkBoxBooleanValueVariable =
                                          inputValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        )),
              )),
        ));
  }
}
