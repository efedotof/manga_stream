import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/pagemanagment.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';
@RoutePage()
class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      appBar: appbar(context, method),
      body:SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const ReviewRecends(),
            const SizedBox(height: 20,),
            const TextFormFields(),
            const SizedBox(height: 8,),
            Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        5, (index) => CommentsContainer(method: method)),
                  ),

                  const SizedBox(height: 50,),
          ],
        ),),
      )
    );
  }
}