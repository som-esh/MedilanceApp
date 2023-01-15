import 'dart:developer';

import 'package:brochure/app/data/utils/sizes.dart';
import 'package:brochure/app/screens/product.dart';
import 'package:brochure/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/data.dart';
import '../theme/colors.dart';
import '../widgets/container_provider.dart';
import '../widgets/top_bar.dart';

ScrollController scrollController = new ScrollController();

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      body: ListView(
        controller: scrollController,

        children: [
          MyAppBar(title: ""),
          SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.wp),
            child: Text(
              "Leading with responsibility",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 22.0,
          ),

          Padding(
            padding: EdgeInsets.zero,
            child: Container(
              height: 30.0.hp,
              //width: 40.0.wp,
              child: ListView(
                controller: ScrollController(),
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Image.asset('assets/s1.jpg'),
                  Image.asset('assets/s2.jpg'),
                ],
              ),
            ),
          ),

          Container(
            //height: 360.0,
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            decoration: BoxDecoration(
              color: Color(0xff76c3d0),
              //borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                //SizedBox(height: 2.0.hp,),
                Padding(
                  padding: EdgeInsets.all(16.0.sp),
                  child: Text(
                    "We provide quality care that treats everyone.",
                    style: TextStyle(
                      color: primary,
                      fontSize: 25.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0.hp,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0.wp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        //Image
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.user,
                              size: 20.0.sp,
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.zero,
                            //color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 1.0.wp,
                        ),
                        Text(
                          "Personal Care",
                          style: TextStyle(
                            color: primary,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0.hp,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0.wp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        //Image
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.baby,
                              size: 20.0.sp,
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.zero,
                            //color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 1.0.wp,
                        ),
                        Text(
                          "Children",
                          style: TextStyle(
                            color: primary,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0.hp,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0.wp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        //Image
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            child: Icon(
                              FontAwesomeIcons.houseMedical,
                              size: 20.0.sp,
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.zero,
                            //color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 1.0.wp,
                        ),
                        Text(
                          "General",
                          style: TextStyle(
                            color: primary,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.0.hp,
                ),

                ElevatedButton(
                  onPressed: () async {
                     final url = Uri.parse(
                         'https://medilance.in/product-list.pdf');
                    try {
                      await launchUrl(
                        url, mode: LaunchMode.externalApplication
                      );
                    } catch (e) {
                      log(e.toString());
                    };
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    minimumSize: const Size(180, 50),
                  ),
                  child: Text(
                    'Product List',
                    style: TextStyle(fontSize: 14.0.sp),
                  ),
                ),
                SizedBox(
                  height: 4.0.hp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.0.hp,
          ),

          Align(
            alignment: Alignment.center,
            child: Column(children: [
              Container(
                color: Colors.white,
                child: Text(
                  'Our Divisons',
                  style: TextStyle(
                    color: primary,
                    fontSize: 22.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                'assets/8.png',
                scale: 0.60.wp,
              ),
              Image.asset(
                'assets/9.png',
                //height: 15.0.hp,
                //width: 30.0.wp,
                scale: 0.60.wp,
              ),
              Image.asset(
                'assets/10.png',
                scale: 0.60.wp,
              ),
            ]),
          ),

          //SizedBox(height: 1.0.hp,),
          ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemCount: containerModel.length,
              itemBuilder: (BuildContext context, index) {
                return ContainerProvider(containerModel[index].title,
                    containerModel[index].description);
              }),

          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              height: 30.0.hp,
              //width: 40.0.wp,
              child: ListView(
                controller: ScrollController(),
                physics: PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Image.asset('assets/t1.jpg'),
                  Image.asset('assets/t2.jpg'),
                  Image.asset('assets/t3.jpg'),
                  Image.asset('assets/t4.jpg'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
