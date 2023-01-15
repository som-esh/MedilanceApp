import 'package:flutter/material.dart';

import '../screens/contact.dart';
import '../screens/homescreen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()),);},
              icon: Icon(Icons.home_outlined,
                size: 20.0,),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home_outlined,
                size: 20.0,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()),);},
            ),
            label: "Products"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.phone_enabled_outlined,
              size: 20.0,
            ),
            label: "Contact")
      ],
    );
  }
}
