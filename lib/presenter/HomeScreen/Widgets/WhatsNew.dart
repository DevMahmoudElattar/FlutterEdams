import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class WhatsNewSC extends StatelessWidget {
  const WhatsNewSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SpacingValues.SectionAllPadding / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only( bottom: SpacingValues.SectionInnerPadding),
            child: Text(Trans.textVal(context).whatIsNew,style: TextStylesVal.SectionHeader2,),
          ),
          Container(
            width: SpacingValues.SectionWidth,
            height: SpacingValues.SectionHeight,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, idx) {
                  return Container(
                    margin: EdgeInsets.all(SpacingValues.CardHorizentalSpacing),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        boxShadow: OtherSharedValues.SectionShadow,
                        borderRadius: OtherSharedValues.CardBorderRadius),
                    width: SpacingValues.Cardwidth,
                    height: SpacingValues.CardHeight,
                    child: ClipRRect(
                      borderRadius: OtherSharedValues.CardBorderRadius,
                      child: Image.asset(
                        ImagesPath.InnerCardHoler,
                        fit: BoxFit.cover,
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
