import 'package:brochure/app/data/utils/sizes.dart';
import 'package:brochure/app/models/rawdata.dart';
import 'package:brochure/app/theme/colors.dart';
import 'package:brochure/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/bottom_bar.dart';
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  Future<void> _sendMail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }
  Future<void> _launchMap(double latitude, double longitude) async {
    // final Uri url =
    // Uri(scheme: 'https', host: 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    //     path: 'headers/');
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    final uri = Uri.parse(googleUrl);
    // if (!await launchUrl(
    //   url,
    //   mode: LaunchMode.inAppWebView,
    // )) {
    //   throw 'Could not launch $url';
    // }
    await launchUrl(uri, mode: LaunchMode.externalApplication);
    // if (await canLaunchUrl(uri)){
    //   await launchUrl(uri, mode: LaunchMode.externalApplication);
    // } else {
    //   // can't launch url
    // }
  }

  @override
  Widget build(BuildContext context) {
    bool _hasCallSupport = false;
    Future<void>? _launched;
    String _phone = '+918544944315';
    String _email = 'info@medilance.in';
    double _latitude = 30.661444030048923;
    double _longitude = 76.838044964418;
    return Scaffold(
      body: ListView(
        children: [
          MyAppBar(title: 'Contact Us'),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            child: Container(
              //color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(12.0.sp),
                child: Text('We are here to help you',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: primary,
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                  children: [
                    Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe0f0fd),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.deepPurple,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _launched = _makePhoneCall(_phone);
                          });
                        },
                        icon: Icon(Icons.phone_enabled_outlined,
                          size: 25.0.sp,
                          color: primary,
                        ),
                      ),
                    ),
                  ),
                    SizedBox(height: 2.0.hp,),
                    Text("85449 44315",
                      style: TextStyle(
                        fontSize: 10.0.sp,
                        fontWeight: FontWeight.w400,
                      ),),
                  ]),

              //SizedBox(height: 24.0,),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffe0f0fd),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: IconButton(
                          icon: Icon(Icons.mail_outline_outlined,
                            size: 25.0.sp,
                            color: primary,
                          ), onPressed: () {
                          setState(() {
                            _launched = _sendMail(_email);
                          });
                        },
                        ),
                      ),
                    ),
                    SizedBox(height: 2.0.hp,),
                    Text('info@medilance.in',
                      style: TextStyle(
                        fontSize: 10.0.sp,
                        fontWeight: FontWeight.w400,
                      ),),
                  ]),


              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe0f0fd),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: IconButton(
                        icon: Icon(Icons.location_on_outlined,
                          size: 25.0.sp,
                          color: primary,
                        ), onPressed: () {
                        setState(() {
                          _launched = _launchMap(_latitude, _longitude);
                        });
                      },
                      ),
                    ),
                  ),
                    SizedBox(height: 2.0.hp,),
                    Text('Zirakpur, Punjab',
                      //overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10.0.sp,
                        fontWeight: FontWeight.w400,
                      ),),
                  ]),
            ],
          ),
          SizedBox(height: 14.0,),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0.wp),
                child: Container(
                  //color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: Text('A platform that truly transforms healthcare',
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        color: primary,
                        fontSize: 22.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
                child: Container(
                  child: Text(companyMessage,
                  style: TextStyle(
                    color: Colors.black87
                  ),),
                ),
              ),
              SizedBox(height: 8.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/7.png',
                    scale: 2.5.sp,
                    ),
                      ),
                      Text('Rajiv Kumar',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text('Chief Executive Officer',
                          style: TextStyle(
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.w400,
                          )),
                  ]),
                ),
              ]),

              SizedBox(height: 14.0,),
            ],
          )
        ],
      ),
    );
  }
}
