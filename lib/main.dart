import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/core/my_routes.dart';
import 'app/service/get_products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void initState() {
    loadProduct();
  }

  @override
  bool get wantKeepAlive => true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    loadProduct();
    return GetMaterialApp(
      title: 'Medilance Healthcare Application',
      debugShowCheckedModeBanner: false,
      home: const MyRoutes(),
    );
  }
}
