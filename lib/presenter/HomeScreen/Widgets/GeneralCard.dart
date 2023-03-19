import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsVal.SectionBG_Color,
          boxShadow: OtherSharedValues.SectionShadow,
          borderRadius: OtherSharedValues.SectionBorderRadius),
      width: SpacingValues.SectionWidth,
      height: SpacingValues.SectionHeight,
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SpacingValues.SectionInnerPadding),
                      child: Text(
                        Trans.textVal(context).customerName,
                        style: TextStylesVal.SectionHeader,
                      ),
                    ),
                    Text(
                      "123456789",
                      style: TextStylesVal.SectionSubHeader,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 125",
                      style: TextStylesVal.SectionBalance,
                    ),
                    Row(
                      children: [
                        Text(
                          Trans.textVal(context).balance,
                          style: TextStylesVal.SectionSubHeader,
                        ),
                        IconsVal.ArrowDown
                      ],
                    )
                  ],
                ),
                Container(
                  width: SpacingValues.PayNowWidth,
                  height: SpacingValues.PayNowHeight,
                  decoration: BoxDecoration(
                    color: ColorsVal.ArrowDownBalanceCollor,
                    borderRadius: OtherSharedValues.SectionBorderRadius,
                    boxShadow: OtherSharedValues.SectionShadow
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
