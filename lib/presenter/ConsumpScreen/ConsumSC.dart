import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../HomeScreen/Widgets/ChartData.dart';
import '../Statements/Info/STInfo.dart';
import '../Statements/StatmSC.dart';

class ConsumSC extends StatelessWidget {
  const ConsumSC({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false ;
      },
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: Sizes.wGeneral(context, 1),
                child: Text("Consumtions",textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7,
                      spreadRadius: 1,
                      offset: Offset(0, 5))
                ]),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: ColorsVal.mainCardBG,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(3))),
                                    ),
                                    Text(
                                      "Current Year",
                                      style: TextStyle(color: ColorsVal.mainCardBG),
                                    ),
                                  ],
                                )),
                            Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: ColorsVal.ArrowDownBalanceCollor,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(3))),
                                    ),
                                    Text(
                                      "Last Year",
                                      style: TextStyle(
                                          color: ColorsVal.ArrowDownBalanceCollor),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ChartData(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
