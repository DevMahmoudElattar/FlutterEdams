import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../HomeScreen/Widgets/ChartData.dart';

class StatmSC extends StatelessWidget {
  const StatmSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 2,
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
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blue,
                                ),

                              )),
                          Expanded(
                              flex: 20,
                              child: Container(
                                color: Colors.yellow,
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
