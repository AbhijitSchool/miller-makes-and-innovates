import 'package:flutter/material.dart';
import 'package:miller_makes_and_innovates/widgets/appbar.dart';

class Login extends StatelessWidget {
  final loginAction;
  final String loginError;

  const Login(this.loginAction, this.loginError);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpperAppBar(),
      body: ElevatedButton(
        onPressed: () {
          loginAction();
        },
        child: Text('Login'),
      ),
    );
  }
}
