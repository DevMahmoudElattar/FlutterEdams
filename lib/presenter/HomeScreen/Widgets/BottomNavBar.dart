import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
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
        label: Trans.textVal(context).consumptions,
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
  Text(
    'Index 1: Consumtion',
    style: optionStyle,
  ),
  Text(
    'Index 2: Applications',
    style: optionStyle,
  ),
   Text(
     'Index 3: Messages',
     style: optionStyle,
   ),
];