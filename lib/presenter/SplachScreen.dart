import 'package:flutter/material.dart';

import 'Login_SC/LoginScreen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);



  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  int _duration = 2;

  @override
  void initState() {
    super.initState();

    Route _createRoute() {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const LoginSC(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    }

    Future.delayed(
        Duration(seconds: _duration),
            () => Navigator.pushReplacement(context, _createRoute(),),
    );
  }

  @override
  Widget build(BuildContext context) {

    return  const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image(image: AssetImage('assets/images/Logo.png')) ,
      ),
    );
  }
}
