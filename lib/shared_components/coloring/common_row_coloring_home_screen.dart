
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonRow extends StatelessWidget {
  final String image1;
  final String image2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  const CommonRow({
    
    super.key,
    required this.image1,
    required this.image2,
    required this.onTap1,
    required this.onTap2,


    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 180.0.w,
          width: 180.0.w,
          child: Stack(
            children: [
              Container(
                height: 180.0.w,
                width: 180.0.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/coloring/picture_container.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 2.0.sp,
                  right: 5.0.sp,
                  left: 5.0.sp,
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    height: 100.0.w,
                    width: 170.0.w,
                    child: IconButton(
                      onPressed:onTap1,
                      icon: Container(
                        height: 100.0.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  image1)),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180.0.w,
          width: 180.0.w,
          child: Stack(
            children: [
              Container(
                height: 180.0.w,
                width: 180.0.w,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/coloring/picture_container.png')),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 2.0.sp,
                  right: 5.0.sp,
                  left: 5.0.sp,
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    height: 100.0.w,
                    width: 170.0.w,
                    child: IconButton(
                      onPressed: onTap2,
                      icon: Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  image2)),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
