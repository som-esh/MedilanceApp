import 'dart:convert';
List<ProductProviderModel> welcomeFromJson(String str)
=> List<ProductProviderModel>.from(json.decode(str).map((x) => ProductProviderModel.fromJson(x)));
String welcomeToJson(List<ProductProviderModel> data)
=> json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductProviderModel {
  ProductProviderModel({
    required this.tabletSection,
    required this.column2,
    required this.column3,
    required this.column4,
  });

  int tabletSection;
  String column2;
  String column3;
  int column4;

  factory ProductProviderModel.fromJson(Map<String, dynamic> json)
  => ProductProviderModel(
    tabletSection: json["TABLET SECTION "],
    column2: json["Column2"],
    column3: json["Column3"],
    column4: json["Column4"],
  );

  Map<String, dynamic> toJson() => {
    "TABLET SECTION ": tabletSection,
    "Column2": column2,
    "Column3": column3,
    "Column4": column4,
  };
}
