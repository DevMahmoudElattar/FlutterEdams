import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetSC extends StatelessWidget {
  const ForgetSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Forget PSW")),
      body: const Text("this is Forget PSW Screen"),
    );
  }
}
