import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

class EmailOrPassField extends StatelessWidget {
  const EmailOrPassField({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.isPassword,
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final bool isPassword;


  



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Color(0xFF7A7A7B),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          isPassword
              ? Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                           onTap: () => context.read<AuthScreenModel>().changeemailTextErrorIsonTap(),
                      obscureText: context.watch<AuthScreenModel>().obscur,
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hint,
                        errorStyle: const TextStyle(color: Colors.red),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                 
                    )),
                    GestureDetector(
                      onTapDown: (_) {
                        context.read<AuthScreenModel>().obscurChange();
                      },
                      onTapUp: (_) {
                        context.read<AuthScreenModel>().obscurChange();
                      },
                      child: Icon(
                        context.watch<AuthScreenModel>().obscur
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        color: const Color(0xFFF97316),
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                           onTap: () => context.read<AuthScreenModel>().changeemailTextErrorIsonTap(),
                            controller: controller,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: hint,
                              errorStyle: const TextStyle(color: Colors.red),
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                           )),
                  ],
                )
        ],
      ),
    );
  }
}
