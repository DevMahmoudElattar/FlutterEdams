import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/Cubit/SmallSharedCubit/small_shared_cubit.dart';
import '../../logic/Cubit/SmallSharedCubit/small_shared_state.dart';
import '../../utils/utils.dart';

class LoginSC extends StatefulWidget {
  const LoginSC({Key? key}) : super(key: key);

  @override
  State<LoginSC> createState() => _LoginSCState();
}

class _LoginSCState extends State<LoginSC> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(SpacingValues.GeneralPadding),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: Sizes.HoneThird(context),
            child: Image.memory(ImageFromSvg.SizaWater(), fit: BoxFit.scaleDown),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child:  TextField(
                      decoration: InputDecoration(
                        //suffixIcon: const Icon(Icons.account_circle_sharp),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                        // labelText: Trans.textVal(context).userName,
                        // labelStyle: TextStyle(color : ColorsVal.SubHeader),
                        hintText: Trans.textVal(context).userName,
                        hintStyle: const TextStyle(color : Colors.white),
                        filled: true,
                        fillColor: ColorsVal.mainCardBG,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        // suffixIcon: IconButton(
                        //   icon: _obscureText
                        //       ? const Icon(Icons.visibility_off)
                        //       : const Icon(Icons.visibility),
                        //   onPressed: () {
                        //     _toggle();
                        //   },
                        // ),
                        filled: true,
                        fillColor: ColorsVal.mainCardBG,
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                        // labelText: Trans.textVal(context).psw,
                        hintText: Trans.textVal(context).psw,
                        hintStyle: TextStyle(color : Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap : (){
                            Navigator.pushNamed(context, '/Forget');
                          },
                          child: Text(
                            Trans.textVal(context).forgPsw,
                            style: TextStyle(color: ColorsVal.mainCardBG,fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/Home");
                      },
                      child: Container(
                        width: double.infinity,
                        height: SpacingValues.MainButtonHeight,
                        decoration: BoxDecoration(
                            color: ColorsVal.MainLoginColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                                Radius.circular(Sizes.ButtonRadius))),
                        child: Center(
                          child: Text(
                            Trans.textVal(context).signIn,
                            style: TextStylesVal.HeaderWithWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: ColorsVal.Header,
                        thickness: .75,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          Trans.textVal(context).orSignWith,
                          style: TextStylesVal.SubHeader,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: ColorsVal.Header,
                        thickness: .75,
                      )),
                    ]),
                  ),
                  // Padding(
                  //   padding:
                  //       EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                  //   child: SizedBox(
                  //     width: Sizes.Whalf(context),
                  //     child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Container(
                  //             width: Sizes.SocialDimentionSquare,
                  //             height: Sizes.SocialDimentionSquare,
                  //             child: Image.memory(
                  //               ImageFromSvg.Facebook(),
                  //               fit: BoxFit.scaleDown,
                  //             ),
                  //           ),
                  //           Container(
                  //             width: Sizes.SocialDimentionSquare,
                  //             height: Sizes.SocialDimentionSquare,
                  //             child: Image.memory(
                  //               ImageFromSvg.Google(),
                  //               fit: BoxFit.scaleDown,
                  //             ),
                  //           ),
                  //           Container(
                  //             width: Sizes.SocialDimentionSquare,
                  //             height: Sizes.SocialDimentionSquare,
                  //             child: Image.memory(
                  //               ImageFromSvg.Apple(),
                  //               fit: BoxFit.scaleDown,
                  //             ),
                  //           )
                  //         ]),
                  //   ),
                  // ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SpacingValues.InnerPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Trans.textVal(context).notMem,
                          style: TextStylesVal.SubHeader,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/SignUp");
                          },
                          child: Text(
                            Trans.textVal(context).registerNow,
                            style: TextStyle(
                                color: ColorsVal.MainLoginColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
