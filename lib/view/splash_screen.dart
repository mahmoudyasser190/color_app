import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();  
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{
  var player=AudioPlayer();
  var player1=AudioPlayer();
  @override
  void initState() {
   
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    player1.play(AssetSource('children_logo.mp3'));
    Future.delayed(const Duration(seconds:10 ),(){
      
     
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context){
        player.play(AssetSource('smile.mp3'));
        return const HomeScreen( );
        
        }));

    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
              height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                     Color.fromARGB(246, 131, 211, 121),
                     Color.fromARGB(246, 131, 211, 121),
                     Color.fromARGB(246, 131, 211, 121),
                     Color.fromARGB(246, 255, 226, 162),
                     Color.fromARGB(246, 255, 226, 162),
                     Color.fromARGB(246, 255, 226, 162),
                     

                    ]
                )
            ),

              child: Padding(
                  padding: EdgeInsets.only(top: 60.0.w,
                  bottom: 30.0.w),
                  child: SingleChildScrollView(
                    child: Column(
                          
                          children: [
                    
                                   Center(
                                     child: Container(
                    
                                            width:300.w,
                                            height: 200.0.w,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage('assets/images/color_picture_splash.png'),
                    
                                                )
                                            ),
                                          ),
                    
                                   ),
                            Container(
                    
                              width:250.0.w,
                              height: 100.0.w,
                              decoration:const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/colors_word.png'),
                    
                                  )
                              ),
                            ),
                    
                    
                    
                    
                    
                                ],
                              ),
                  ),
                ),
                
                



              
            ),




    );
  }
}