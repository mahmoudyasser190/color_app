
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FixedContainer extends StatelessWidget {
  const FixedContainer({super.key});

  @override     
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/coloring/woodenwall.png'),
            fit: BoxFit.fill),
      ),
    );
  }
}

class CommonImageContainer extends StatelessWidget {
  final double hight;
  final double width;
  Color? color;
  final String image;
  double boarderRadius = 10.0;
  CommonImageContainer({
    super.key,
    this.boarderRadius = 10.0,
    required this.hight,
    required this.width,
    required this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(boarderRadius),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
    );
  }
}

class CommonIconContainer extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final VoidCallback onTap;
  const CommonIconContainer({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.w),
      child: SizedBox(
        height: height,
        width: width,
        child: IconButton(
            icon: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            onPressed: onTap),
      ),
    );
  }
}



