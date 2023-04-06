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
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 5))
                  ]),
                  child: Column(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: ColorsVal.mainCardBG,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                  offset: Offset(0, 5))
                            ]),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  const [
                            Text("Date", style: TextStyle(color:  Colors.white),),
                            Text("Current Year", style: TextStyle(color:  Colors.white),),
                            Text("Last Year", style: TextStyle(color:  Colors.white),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(itemCount: 50,itemBuilder: (BuildContext context , int idx){
                         return Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: const [
                                   Text("Mar 2023"),
                                   Text("50 m3"),
                                   Text("47 m3"),

                                 ],
                               ),
                             ),
                             const Padding(
                               padding: EdgeInsets.symmetric(horizontal: 8.0),
                               child: Divider(height: 1,thickness: 1,color: Colors.grey,),
                             )
                           ],
                         );
                        }),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
