import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSC extends StatelessWidget {
  const AppSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Apps SC")),
      body: const Text("this is Apps SC"),
    );
  }
}
