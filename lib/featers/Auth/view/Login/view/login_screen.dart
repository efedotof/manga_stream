import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';



@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var method = context.watch<PageManagments>();
    return Scaffold(
      appBar:  appbar(context, method),
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
              Form(
                key: _formKey,
                child: 
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmailOrPassField(label: 'E-mail', hint:'Ins-ra seu e-mail',controller:context.watch<AuthScreenModel>().emailcontroller, isPassword: false,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  EmailOrPassField(label: 'Senha',hint: 'Inssira sue senha',controller: context.watch<AuthScreenModel>().passwordcontroller, isPassword:  true,),
                ],
              ),
              
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Center(child: Text(context.watch<AuthScreenModel>().emailTextError, style: const TextStyle(fontSize: 18, color: Colors.red), )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              const ButtonEndLog(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              const Center(child:GoRegistrationText()),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              const Center(child: TextOrs()),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              const ButtonLogVk(),
            ],
          ),
        ),
      )
    );
  }
}