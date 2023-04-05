import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class STInfo extends StatelessWidget {
  const STInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Sizes.wGeneral(context, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: Sizes.wGeneral(context, .9),
                height: Sizes.hGeneral(context, .1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [...OtherSharedValues.SectionShadow],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "MON, MAR 01 2023",
                  style: TextStyle(
                      color: ColorsVal.mainCardBG,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 4),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: Sizes.wGeneral(context, .9),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [...OtherSharedValues.SectionShadow],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            "Payment Number",
                            style: TextStyle(color: ColorsVal.mainCardBG),
                          ),
                          Text(
                            "123456879",
                            style: TextStyle(
                                color: ColorsVal.mainCardBG,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.blueGrey,
                        thickness: .5,
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(color: ColorsVal.mainCardBG),
                          ),
                          Text(
                            "987654321",
                            style: TextStyle(
                                color: ColorsVal.mainCardBG,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.blueGrey,
                        thickness: .5,
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Consumtion",
                            style: TextStyle(color: ColorsVal.mainCardBG),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                color: ColorsVal.mainCardBG,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.blueGrey,
                        thickness: .5,
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "CUR. Read",
                            style: TextStyle(color: ColorsVal.mainCardBG),
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                                color: ColorsVal.mainCardBG,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.blueGrey,
                        thickness: .5,
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PREV. READ",
                            style: TextStyle(color: ColorsVal.mainCardBG),
                          ),
                          Text(
                            "80",
                            style: TextStyle(
                                color: ColorsVal.mainCardBG,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.blueGrey,
                        thickness: .5,
                        height: 10,
                      ),
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
