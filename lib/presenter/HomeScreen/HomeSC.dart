import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'HomeStartSC.dart';
import 'Widgets/BottomNavBar.dart';
import 'Widgets/Drawer.dart';

class HomeSC extends StatefulWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  State<HomeSC> createState() => _HomeSCState();
}

class _HomeSCState extends State<HomeSC> {
  int _selectedIndex = 0;
  static String SelectedName = "Home";


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 0){
        _HomeSCState.SelectedName = "Home";
      }

      if(index == 1){
        _HomeSCState.SelectedName = "Consumtion";
      }
      if(index == 2){
        _HomeSCState.SelectedName = "Application";
      }
      if(index == 3){
        _HomeSCState.SelectedName = "Messages";
      }

    });
  }

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };


  // final List<Widget> _widgetOptions = <Widget>[
  //   const HomeStartSC(),
  //   const Text(
  //     'Index 1: Consumtion',
  //     style: optionStyle,
  //   ),
  //   const Text(
  //     'Index 2: Applications',
  //     style: optionStyle,
  //   ),
  //   const Text(
  //     'Index 3: Messages',
  //     style: optionStyle,
  //   ),
  // ];


  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (_) => WidgetsList.elementAt(_selectedIndex));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeSC_Drawer(context,_onItemTapped),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        //leading: Container(), adding this Will remove default humburger menu of drawer
        title:  Text(_HomeSCState.SelectedName,style: TextStyle(color: Colors.blue),),
      ),
      body: buildNavigator(),
      // body: IndexedStack(
      //   index: _selectedIndex,
      //   children:WidgetsList,
      // ),
      bottomNavigationBar: HomeBottomNav(context,_selectedIndex,_onItemTapped),
    );
  }
}
