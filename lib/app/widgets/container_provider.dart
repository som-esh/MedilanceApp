import 'package:brochure/app/data/utils/sizes.dart';
import 'package:flutter/cupertino.dart';

class ContainerProvider extends StatelessWidget {
  final String title;
  final String description;

  ContainerProvider(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0, left: 10.0, right: 10.0),
      child: Container(
        width: 50.0.wp,
        decoration: BoxDecoration(
          color: Color(0xffe0f0fd),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title,
                style: TextStyle(
                  color: Color(0xff0037B1),
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.0,),
              Text(description,
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w400,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
