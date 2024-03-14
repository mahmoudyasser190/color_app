
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonImage extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const CommonImage({
    super.key,
    required this.image,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0.w,
      width: 100.0.w,
      child: IconButton(
        onPressed:onTap, icon:Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
        ),
        iconSize: 50.0.w,
        ),
    );
  }
}