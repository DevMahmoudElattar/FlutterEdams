import 'package:customers_app/presenter/Statements/Info/STInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../HomeScreen/Widgets/ChartData.dart';

class StatmSC extends StatelessWidget {
  const StatmSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false ;
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: Sizes.wGeneral(context, 1),
                child: Text("Statments",textAlign: TextAlign.left,),
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
                                  "Payments",
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
                                  "Amount",
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
            const Divider(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int idx) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: Sizes.wGeneral(context, .8),
                      height: Sizes.hGeneral(context, .15),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  width: Sizes.wGeneral(context, .5),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.blue,
                                  ),
                                )),
                            const VerticalDivider(thickness: 0,width: 5,color: Colors.transparent,),
                            Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const STInfo()));
                                  },
                                  child: Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color : Colors.white,
                                        boxShadow: [...OtherSharedValues.SectionShadow]
                                      ),
                                      child: Column(
                                        children:   [
                                          const Expanded(flex: 1,child: Center(child: Text("MAR 23"))),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: Divider(color: Colors.blueGrey,thickness: 0,height: 0,),
                                          ),
                                          Expanded(flex: 2,child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Balance",style: TextStyle(color: ColorsVal.mainCardBG),),
                                                  Text("R17",style: TextStyle(color: ColorsVal.mainCardBG,fontWeight: FontWeight.bold))
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Payment",style: TextStyle(color: ColorsVal.mainCardBG),),
                                                  Text("49",style: TextStyle(color: ColorsVal.mainCardBG,fontWeight: FontWeight.bold))
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("Transactions",style: TextStyle(color: ColorsVal.mainCardBG),),
                                                  Text("17",style: TextStyle(color: ColorsVal.mainCardBG,fontWeight: FontWeight.bold))
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("OP",style: TextStyle(color: ColorsVal.mainCardBG),),
                                                  Text("50",style: TextStyle(color: ColorsVal.mainCardBG,fontWeight: FontWeight.bold))
                                                ],
                                              ),

                                            ],
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
