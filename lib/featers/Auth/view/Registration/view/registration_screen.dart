import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:manga_stream/methods/methods.dart';
import 'package:provider/provider.dart';
import '../widget/widget.dart';


@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmailOrPassField(label: 'E-mail', hint:'Ins-ra seu e-mail',controller:context.watch<AuthScreenModel>().emailcontroller, isPassword: false, isConfirmar: false,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  EmailOrPassField(label: 'Senha',hint: 'Inssira sue senha',controller:context.watch<AuthScreenModel>().passwordcontroller, isPassword: true, isConfirmar: false,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  EmailOrPassField(label: 'Confirmar senha', hint:'Confirmar senha',controller:context.watch<AuthScreenModel>().confirmSenhacontroller, isPassword: true, isConfirmar: true,),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Center(child: Text(context.watch<AuthScreenModel>().emailTextError, style: const TextStyle(fontSize: 18, color: Colors.red), )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              const ButtonEndReg()
        
            ],
          ),
        ),
      )
    );
  }
}