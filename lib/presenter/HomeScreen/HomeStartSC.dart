import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'Widgets/ChartData.dart';
import 'Widgets/GeneralCard.dart';
import 'Widgets/WhatsNew.dart';

class HomeStartSC extends StatelessWidget {
  const HomeStartSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(SpacingValues.LayoutAllPadding),
          child: Column(
            children:  [
              Padding(
                padding: EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: GeneralCard(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: ChartData(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: WhatsNewSC(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
