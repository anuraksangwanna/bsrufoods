
import 'package:bsrufoods/screens/account.dart';
import 'package:flutter/material.dart';

import 'home/homelist.dart';
import 'menu.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

List<Widget> shows = [Homelist(),Menu(),Account()];
int _currentIndex = 0;
  
  Widget showlogo() {
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.asset('images/logo.png'),
    );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
  Widget buttomlist() {
    return BottomNavigationBar(
        onTap: onTabTapped, // new
        selectedItemColor: Color.fromRGBO(255, 255, 255, 1.0),
        currentIndex: _currentIndex, 
        backgroundColor: Color.fromRGBO(255, 51, 247, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              size: 35.0,
            ),
            title: Text("หน้าแรก",),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.list,
              size: 35.0,
            ),
            title: Text("เมนู"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.person,
              size: 35.0,
            ),
            title: Text("บัญชี"), 
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buttomlist(),
      body: SafeArea(
        child: Center(
          child: shows[_currentIndex],
        ),
      ),
    );
  }
}
