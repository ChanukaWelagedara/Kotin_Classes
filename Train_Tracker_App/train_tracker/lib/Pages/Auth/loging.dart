import 'package:flutter/material.dart';
//import 'package:train_tracker/Pages/Auth/loging.dart';
import 'package:train_tracker/Pages/Auth/signIn.dart';
import 'package:train_tracker/Pages/Auth/signUp.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool change = true;
  void routePage() {
    setState(() {
      change = !change;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (change) {
      return Signin(
        changePage: routePage,
      );
    } else {
      return signUp(changePage: routePage);
    }
  }
}
