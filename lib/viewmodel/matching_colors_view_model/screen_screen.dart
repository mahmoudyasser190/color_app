import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/shared_components/coloring/common_row_coloring_home_screen.dart';
import 'package:color_app/view/coloring/coloring_page_1.dart';
import 'package:color_app/view/coloring/coloring_page_10.dart';
import 'package:color_app/view/coloring/coloring_page_11.dart';
import 'package:color_app/view/coloring/coloring_page_12.dart';
import 'package:color_app/view/coloring/coloring_page_2.dart';
import 'package:color_app/view/coloring/coloring_page_3.dart';
import 'package:color_app/view/coloring/coloring_page_4.dart';
import 'package:color_app/view/coloring/coloring_page_5.dart';
import 'package:color_app/view/coloring/coloring_page_6.dart';
import 'package:color_app/view/coloring/coloring_page_7.dart';
import 'package:color_app/view/coloring/coloring_page_8.dart';
import 'package:color_app/view/coloring/coloring_page_9.dart';
import 'package:color_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/coloring/woodenwall.png'),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 25.0.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Column(
                    
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 300.0.w,
                            height: 100.0.w,
                            child: Stack(
                              children: [
                                Container(
                                  width: 300.0.w,
                                  height: 100.0.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/coloring/wood_title.png'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 20.0.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 60.0.w,
                                        width: 300.0.w,
                                        child: Text(
                                          'Choose a drawing',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.boogaloo(
                                              fontSize: 40.0.w,
                                              color: const Color.fromARGB(
                                                  255, 194, 104, 81)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        SizedBox(
                            width: 20.0.w,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 30.0.w),
                            child: IconButton(
                              icon: Container(
                                height: 50.0.w,
                                width: 50.0.w,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/brown_false.png'),fit: BoxFit.fill)
                                ),
                              ),
                              iconSize: 50.0.sp,
                              onPressed: () {
                                player.play(AssetSource('button_music.wav'));
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const  HomeScreen();
                                              }));
                              },
                            ),
                          ),
                        ],
                      ),
                     Column(
                          children: [
                            CommonRow(
                              image1: 'assets/images/coloring/rabbit_remove.png',
                              image2: 'assets/images/coloring/giraffe_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example4();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example1();
                                }));
                              },
                            ),
                            CommonRow(
                              image1: 'assets/images/coloring/elephant_remove.png',
                              image2: 'assets/images/coloring/octupus_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example2();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example7();
                                }));
                              },
                            ),
                            CommonRow(
                              image1: 'assets/images/coloring/parrot_remove.png',
                              image2: 'assets/images/coloring/lion_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example6();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example9();
                                }));
                              },
                            ),
                            CommonRow(
                              image1: 'assets/images/coloring/fish_remove.png',
                              image2: 'assets/images/coloring/hen_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example8();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example10();
                                }));
                              },
                            ),
                            CommonRow(
                              image1: 'assets/images/coloring/sea_turtle_remove.png',
                              image2: 'assets/images/coloring/corocodile_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example3();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example12();
                                }));
                              },
                            ),
                            CommonRow(
                              image1: 'assets/images/coloring/cow_remove.png',
                              image2: 'assets/images/coloring/turtle_remove.png',
                              onTap1: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example5();
                                }));
                              },
                              onTap2: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const Example11();
                                }));
                              },
                            ),
                          ],
                        ),
                      
                    ],
                  ),
                ),
              ],
            ),
        ),
        
      ),
    );
  }
}
