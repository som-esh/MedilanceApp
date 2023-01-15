import 'package:brochure/app/data/utils/sizes.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 18.0.hp,
    //width: MediaQuery.of(context).size.width,
    color: primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
              child: Image.asset(
                'assets/1.png',
                width: 180.0.sp,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            //heightFactor: 4.0.sp,
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Container(
                //width: 34.0.wp,
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   width: 2.0,
                  //  color: Colors.white,
                  // ),
                  borderRadius: BorderRadius.circular(40.0),
                  //color: title != '' ? Colors.purple : primary,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
                  child: Text(title,
                    style: TextStyle(
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),),
                ),
              ),
            ),
          ),
        ],
      ),
      );
  }
}
