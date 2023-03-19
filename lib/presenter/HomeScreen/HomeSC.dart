import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'Widgets/BottomNavBar.dart';
import 'Widgets/Drawer.dart';

class HomeSC extends StatefulWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  State<HomeSC> createState() => _HomeSCState();
}

class _HomeSCState extends State<HomeSC> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeSC_Drawer(context,_onItemTapped),
      appBar: AppBar(
        //leading: Container(), adding this Will remove default humburger menu of drawer
        title: const Text("HYDRO"),
      ),
      body: Center(
        child: WidgetsList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: HomeBottomNav(context,_selectedIndex,_onItemTapped),
    );
  }
}
