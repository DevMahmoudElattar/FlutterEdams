import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../ApplicationsScreen/AppSC.dart';
import '../../ConsumpScreen/ConsumSC.dart';
import '../../MessagesScreen/MsgsSC.dart';
import '../HomeStartSC.dart';



BottomNavigationBar HomeBottomNav (BuildContext context,int SelectedIndex,Function(int val) itemTapped){
  return BottomNavigationBar(
    elevation: 3,
    type: BottomNavigationBarType.shifting,
    unselectedItemColor: ColorsVal.SubHeader,
    items:  <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: IconsVal.home,
        label: Trans.textVal(context).homPage,
      ),
      BottomNavigationBarItem(
        icon:IconsVal.Consumtions,
        label: Trans.textVal(context).consumptions,
      ),
      BottomNavigationBarItem(
        icon: IconsVal.Applications,
        label: Trans.textVal(context).applications,
      ),
      BottomNavigationBarItem(
        icon: IconsVal.Messages,
        label: Trans.textVal(context).messages,
      ),
    ],
    currentIndex: SelectedIndex,
    selectedItemColor: ColorsVal.mainCardBG,
    onTap: itemTapped,
  );
}

 const TextStyle optionStyle =
 TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

 const List<Widget> WidgetsList = <Widget>[
   HomeStartSC(),
   ConsumSC(),
   AppSC(),
   MsgsSC(),
];