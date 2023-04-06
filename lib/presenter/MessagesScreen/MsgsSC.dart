import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgsSC extends StatelessWidget {
  const MsgsSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Messages SC")),
      body: const Text("this is Message Screen"),
    );
  }
}
