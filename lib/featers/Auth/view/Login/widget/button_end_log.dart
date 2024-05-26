import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

class ButtonEndLog extends StatelessWidget {
  const ButtonEndLog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Provider.of<AuthScreenModel>(context, listen: false)
          .entrarbutton(context),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.width * 0.14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFFF97316)),
        child: context.watch<AuthScreenModel>().isloadbutton
            ? const CircularProgressIndicator(
                color: Color(0xFFFCDFC9), strokeWidth: 2)
            : const Text(
                'Entrar',
                style: TextStyle(color: Color(0xFFFCDFC9)),
              ),
      ),
    );
  }
}

