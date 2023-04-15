import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class SignUpSC extends StatelessWidget {
  const SignUpSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [],
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        //leading: Container(), adding this Will remove default humburger menu of drawer
        title:  Text("Sign Up",style: TextStyle(color: Colors.blue),),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color : Colors.white,
                boxShadow: [...OtherSharedValues.SectionShadow]
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.memory(ImageFromSvg.UserPic()),
                  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter Your Name'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Your Email'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Mobile No.',
                      hintText: 'Enter Your Mobile No.'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Your Password'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Repeat Password',
                      hintText: 'Repeat Your Password'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Account No.',
                      hintText: 'Enter Your Account No.'
                  ),  ),
                  const Divider(height: 20,),
                  ElevatedButton(onPressed: (){}, child: SizedBox(width: Sizes.wGeneral(context, .9),child: Text("Sign up",textAlign: TextAlign.center,)))
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
