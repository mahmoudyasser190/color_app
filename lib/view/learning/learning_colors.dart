import 'package:color_app/shared_components/learning/icon_containers.dart';
import 'package:color_app/view/home_screen.dart';
import 'package:color_app/view/learning/black.dart';
import 'package:color_app/view/learning/blue.dart';
import 'package:color_app/view/learning/brown.dart';
import 'package:color_app/view/learning/green.dart';
import 'package:color_app/view/learning/grey.dart';
import 'package:color_app/view/learning/orange.dart';
import 'package:color_app/view/learning/pink.dart';
import 'package:color_app/view/learning/purple.dart';
import 'package:color_app/view/learning/red.dart';
import 'package:color_app/view/learning/white.dart';
import 'package:color_app/view/learning/yellow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningColors extends StatefulWidget {
  const LearningColors({super.key});

  @override
  State<LearningColors> createState() => _LearningColorsState();
}

class _LearningColorsState extends State<LearningColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 106, 206, 176),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: EdgeInsets.only(top: 30.0.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 130.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40.0.w,
                          width: 220.0.w,
                          child: Text(
                            'I Know my Color',
                            style: GoogleFonts.boogaloo(
                              fontSize: 30.0.w,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.orange,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0.w,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HomeScreen();
                              }));
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                            iconSize: 18.0.w,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1.0.w,
                    width: 190.0.w,
                    color: const Color.fromARGB(255, 106, 206, 176),
                  ),
                  SizedBox(
                    height: 20.0.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonImage(
                          image: 'assets/images/learning_colors/brown.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Brown();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/green.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Green();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/orange.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Orange();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/black.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Black();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonImage(
                          image: 'assets/images/learning_colors/white.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const White();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/red.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Red();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/purple.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Purple();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/grey.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Grey();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonImage(
                          image: 'assets/images/learning_colors/yellow.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Yellow();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/pink.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Pink();
                            }));
                          }),
                      CommonImage(
                          image: 'assets/images/learning_colors/blue.png',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Blue();
                            }));
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
