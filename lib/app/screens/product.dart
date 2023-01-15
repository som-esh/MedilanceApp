import 'package:brochure/app/data/utils/sizes.dart';
import 'package:brochure/app/models/product_provider_model.dart';
import 'package:flutter/material.dart';
import '../service/get_products.dart';
import '../widgets/app_bar.dart';
import 'homescreen.dart';



class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(productList.length);
    return Scaffold(
      body: ListView(
        //controller: scrollController,
        physics: PageScrollPhysics(),
        children: [
          MyAppBar(title: 'Our Products'),
          SizedBox(height: 28.0,),
          Container(
            //height: 200.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Scrollbar(
                    thickness: 10.0,
                    controller: scrollController,
                    thumbVisibility: true,
                    child: ListView.builder(
                        controller: scrollController,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                      itemCount: productList.length,
                      itemBuilder: (context, index){
                        ProductProviderModel w = productList[index];
                        return Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffe0f0fd),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(w.column2,
                                    style: TextStyle(
                                      fontSize: 18.0.sp,
                                      color: Colors.black87,
                                    ),
                                    ),
                                    SizedBox(height: 2.0,),
                                    Text(w.column3),
                                    SizedBox(height: 2.0,),
                                    Text('Price: '+w.column4.toString(),
                                    style: TextStyle(
                                      fontSize: 14.0.sp,
                                    ),),
                                  ],

                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                  )
            ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
