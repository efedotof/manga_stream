 import 'package:flutter/material.dart';

SizedBox sizedboxemailnamebirth (BuildContext context, name, hintText) =>  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Color(0xFFC8CED4),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                            decoration: InputDecoration(
                              hintText: hintText,
                              border: InputBorder.none,
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                );