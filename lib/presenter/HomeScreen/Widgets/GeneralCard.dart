import 'package:customers_app/presenter/Statements/StatmSC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsVal.mainCardBG,
          boxShadow: OtherSharedValues.SectionShadow,
          borderRadius: OtherSharedValues.SectionBorderRadius),
      width: SpacingValues.SectionWidth,
      child: Padding(
        padding: EdgeInsets.all(SpacingValues.SectionAllPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Trans.textVal(context).year,
                      style: TextStylesVal.SectionSubHeader,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SpacingValues.SectionInnerPadding),
                      child: Text(
                        Trans.textVal(context).amount,
                        style: TextStylesVal.SectionHeader,
                      ),
                    ),

                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "\$ 125",
                //       style: TextStylesVal.SectionBalance,
                //     ),
                //     Row(
                //       children: [
                //         Text(
                //           Trans.textVal(context).balance,
                //           style: TextStylesVal.SectionSubHeader,
                //         ),
                //         IconsVal.ArrowDown
                //       ],
                //     )
                //   ],
                // ),
                GestureDetector(
                  onTap: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context)=> StatmSC()));
                  },
                  child: Container(
                    width: SpacingValues.PayNowWidth,
                    height: SpacingValues.PayNowHeight,
                    decoration: BoxDecoration(
                      borderRadius: OtherSharedValues.SectionBorderRadius,
                      border: Border.all(width: 1,color: Colors.white)
                    ),
                    child: Center(child: Text(Trans.textVal(context).statements,style: TextStylesVal.SectionTitle3)),
                  ),
                ),
                Container(
                  width: SpacingValues.PayNowWidth,
                  height: SpacingValues.PayNowHeight,
                  decoration: BoxDecoration(
                    color: ColorsVal.ArrowDownBalanceCollor,
                    borderRadius: OtherSharedValues.SectionBorderRadius,
                  ),
                  child: Center(child: Text(Trans.textVal(context).payNow,style: TextStylesVal.SectionTitle2)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
