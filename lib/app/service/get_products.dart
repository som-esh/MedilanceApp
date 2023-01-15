import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product_provider_model.dart';

List<ProductProviderModel> productList =[];

Future loadProduct() async {
  String jsonString = await rootBundle.loadString('assets/meds.json');
  final jsonResponse = json.decode(jsonString);
  jsonResponse.forEach((element){
    ProductProviderModel welcome = new ProductProviderModel.fromJson(element);
    productList.add(welcome);
  });
}