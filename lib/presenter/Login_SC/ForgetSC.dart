import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetSC extends StatelessWidget {
  const ForgetSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          actions: [],
          iconTheme: const IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          //leading: Container(), adding this Will remove default humburger menu of drawer
          title:  Text("Forget Password",style: TextStyle(color: Colors.blue),),
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(  decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Your Email'
              ),  ),
              const Divider(height: 20,color: Colors.transparent,),
              ElevatedButton(onPressed: (){}, child: const SizedBox(width: double.infinity,child: Text("Reset Password",textAlign: TextAlign.center,)))
            ],
          ),
        ),
      )
    );
  }
}
