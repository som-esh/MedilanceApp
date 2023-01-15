import 'dart:developer';

import 'package:brochure/app/screens/product.dart';
import 'package:brochure/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../screens/contact.dart';
import '../../screens/homescreen.dart';
import 'package:url_launcher/url_launcher.dart';
class MyRoutes extends StatefulWidget {
  const MyRoutes({Key? key}) : super(key: key);

  @override
  State<MyRoutes> createState() => _MyRoutesState();
}

RxInt _currentIndex = 1.obs;
List<Widget>? list = [
  Products(),
  Homescreen(),
  Contact(),
];

class _MyRoutesState extends State<MyRoutes> {

  late final index;
  late Color _color;

  _launchWhatsapp() async {
    //var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    //launch('https://api.whatsapp.com/send/?phone=(phone_number)')
    var url = Uri.parse("whatsapp://send?phone=phone918544944315");
    try {
      await launchUrl(
          url, mode: LaunchMode.externalApplication
      );
    } catch (e) {
      log(e.toString());
    };

    //var whatsappAndroid = Uri.parse("https://api.whatsapp.com/send/?phone=(918544944315)");
    // if (await canLaunchUrl(whatsappAndroid)) {
    //   await launchUrl(whatsappAndroid, mode: LaunchMode.externalApplication);
    // }
    //  else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text("WhatsApp is not installed on the device"),
    //     ),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
      list![_currentIndex.value],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.whatsapp),
          backgroundColor: Colors.green.shade800,
          onPressed: () {
            _launchWhatsapp();
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: Obx(() =>
           BottomNavigationBar(
            elevation: 0.0,
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      _currentIndex.value = 0;
                    },
                    icon: Icon(Icons.shopping_basket_rounded,
                      color: _currentIndex.value == 0 ? primary: Colors.blueGrey,
                      size: 24.0,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.home_rounded,
                      color: _currentIndex.value == 1 ? primary: Colors.blueGrey,
                      size: 24.0,),
                    onPressed: () {
                      _currentIndex.value = 1;
                      },
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.phone_enabled_rounded,
                    color: _currentIndex.value == 2 ? primary: Colors.blueGrey,
                    size: 24.0,), onPressed: () {
                    /*setState((){
                      _currentIndex = 2;
                    });
                  },*/
                    _currentIndex.value = 2;
                  }
                  ),
                  label: "",
              )
            ],
              selectedFontSize: 0.0,
              unselectedFontSize: 0.0
          ),
        ),
      ),
    );
  }
}
