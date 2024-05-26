
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';


class EmailOrPassField extends StatelessWidget {
  const EmailOrPassField({super.key,
  
     required this.controller,required this.hint, required this.label, required this.isPassword, required this.isConfirmar,
  
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  final bool isConfirmar;

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
              ? isConfirmar? Expanded(
                        child: TextFormField(
                            controller: controller,
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            onTap: () => context.read<AuthScreenModel>().changeemailTextErrorIsonTap(),
                            decoration: InputDecoration(
                              
                              hintText: hint,
                              errorStyle: const TextStyle(color: Colors.red),
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                           )):  
              
              
               Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      obscureText: context.watch<AuthScreenModel>().obscur,
                      controller: controller,
                       onTap: () => context.read<AuthScreenModel>().changeemailTextErrorIsonTap(),
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
                        log('dows');
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
                            controller: controller,
                            onTap: () => context.read<AuthScreenModel>().changeemailTextErrorIsonTap(),
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
                ),
              
          
        ],
      ),
    );
  }
}



