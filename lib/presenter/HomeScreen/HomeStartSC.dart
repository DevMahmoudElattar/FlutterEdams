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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SpacingValues.LayoutAllPadding),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: GeneralCard(),
              ),
              // Padding(
              //   padding:
              //       EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
              //   child: ChartData(),
              // ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: WhatsNewSC(),
              ),
              Padding(
                padding:
                EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: Container(
                  width: Sizes.wGeneral(context, .9),
                  height: Sizes.hGeneral(context, .1),
                  decoration: BoxDecoration(
                      borderRadius: OtherSharedValues.SectionBorderRadius,
                  border: Border.all(width: 1,color: Colors.blue)
                  ),
                  child: const Center(child: Text("WATER IS LIFE DON'T WASTE IT",style: TextStyle(color: Colors.grey),)),
                )
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: SpacingValues.LayoutSectionPadding),
                child: ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: Sizes.wGeneral(context, .8),
                      height: Sizes.hGeneral(context, .05),
                        child: Center(child: Text(Trans.textVal(context).problemReport,textAlign: TextAlign.center,)))),
              ),
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text(
                        'Hi, I am a SnackBar!',
                      ),
                      backgroundColor: (Colors.blue),
                      duration: const Duration(days: 1),
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height - 150),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: 'dismiss',
                        textColor: Colors.white70,
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Show Snack Bar"))
            ],
          ),
        ),
      ),
    );
  }
}
