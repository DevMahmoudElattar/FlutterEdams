import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class MsgsSC extends StatelessWidget {
  const MsgsSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,child: Text("Messages")),
            Expanded(
              child: ListView.builder(itemCount: 100,itemBuilder: (BuildContext context, int idx){
                return Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [...OtherSharedValues.SectionShadow]),
                  child: Column(
                    children: [
                       Expanded(flex: 1, child: Center(child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Siza Water"),
                            Text("MAR 23"),
                          ],
                      ),
                       ))),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          color: Colors.blueGrey,
                          thickness: 0,
                          height: 0,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Lorem Ipusm this is test from a far a way server to test data as if needed',overflow: TextOverflow.ellipsis,maxLines: 3,),
                          ))
                    ],
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
