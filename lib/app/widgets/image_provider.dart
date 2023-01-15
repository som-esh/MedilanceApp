import 'package:brochure/app/data/utils/sizes.dart';
import 'package:flutter/material.dart';

class imageProvider extends StatelessWidget {
  final AssetImage img;
  final String description;
  imageProvider(this.img, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: [
          Container(
            //height: 40.0.hp,
            width: 90.0.wp,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                //color: Colors.black,
                image: DecorationImage(
                  image: img,
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            height: 40.0.hp,
            width: 45.0.wp,
            decoration: BoxDecoration(
              color: Colors.white70.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 40.0.hp,
                    width: 45.0.wp,
                    child: Text(
                      description,
                      //overflow: TextOverflow.visible,
                      style: TextStyle(
                        color: Color(0xffeaeefc),
                        fontSize: 22.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
