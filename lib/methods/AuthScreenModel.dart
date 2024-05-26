import 'dart:developer' show log;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:manga_stream/methods/MangaAPI.dart';
import 'package:manga_stream/router/router.dart';
import 'package:manga_stream/supabase/supabase.dart';
import 'package:provider/provider.dart';

class AuthScreenModel with ChangeNotifier {
  SupabaseHelper supabaseHelper = SupabaseHelper();

  bool obscur = true;
  bool errorCheckingThePasswordLengthAndEmailAndConfirmformat = false;
  bool isloadbutton = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmSenhacontroller = TextEditingController();
  String emailTextError = '';


  void changeemailTextErrorIsonTap (){
    emailTextError = '';
    notifyListeners();
  }

  void changeEmailTextError(String error) {
    emailTextError = error;
    notifyListeners();
  }

  void changebuttonload(bool value) {
    isloadbutton = value;
    notifyListeners();
  }

  

  void entrarbutton(BuildContext context) async {
    try {
      changebuttonload(true);
      if (emailcontroller.text.isNotEmpty &&
          passwordcontroller.text.isNotEmpty) {
        if (isPasswordValid(passwordcontroller.text) &&
            isEmailValid(emailcontroller.text)) {
           var res = await supabaseHelper.signInExistingUser(context, emailcontroller.text, passwordcontroller.text);

            if(res?.session == null){
              changeEmailTextError('Неправильный логин или пароль');
              changebuttonload(false);
            }else{
              Provider.of<MangaAPI>(context, listen: false).getAllData();
              log(Provider.of<MangaAPI>(context,listen: false).getAllData().toString());
              // context.pushRoute(const MainHomeRoute());
            }
        } else {
          changeEmailTextError('Неправильный формат');
          changebuttonload(false);
        }
      } else {
        changeEmailTextError('Введите данные');
        changebuttonload(false);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void cadastrarsebuttin(BuildContext context) async {
    try {
      changebuttonload(true);
      if (emailcontroller.text.isNotEmpty &&
          passwordcontroller.text.isNotEmpty) {
        if (isPasswordValid(passwordcontroller.text) &&
            isEmailValid(emailcontroller.text)) {
          if (passwordcontroller.text == confirmSenhacontroller.text) {
            supabaseHelper
                .createNewUser(context, emailcontroller.text, passwordcontroller.text)
                .then((value) {
              if (value == true) {
                emailcontroller.text = '';
                passwordcontroller.text = '';
                confirmSenhacontroller.text = '';
                 Provider.of<MangaAPI>(context, listen: false).getAllData().then((value) => {
                      if (value == true)
                        {
                          context.pushRoute(const MainHomeRoute())}
                    });
              } else {
                changeEmailTextError('Неправильный логин или пароль');
                changebuttonload(false);
              }
            });
          } else {
            changeEmailTextError('Пароли не совпадают');
            changebuttonload(false);
          }
        } else {
          changeEmailTextError('Неправильный формат');
          changebuttonload(false);
        }
      } else {
        changeEmailTextError('Введите данные');
        changebuttonload(false);
      }
    } catch (e) {
      log(e.toString());
    }

  }

  void loginbutton(BuildContext context)  => context.pushRoute(const LoginRoute());
  void cadastrobutton(BuildContext context) => context.pushRoute(const RegistrationRoute());
  void recuperarsanhabutton(BuildContext context)  => context.pushRoute(const RegistrationRoute());


  void loginVKID(BuildContext context) {
    //   log('loginVKID');
  }

  void obscurChange() {
      obscur = !obscur;
      notifyListeners();
  }

  bool isPasswordValid(String password) {
    return password.length >= 6;
  }

  bool isEmailValid(String email) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }
}
