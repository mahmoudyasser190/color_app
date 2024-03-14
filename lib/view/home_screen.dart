
import 'package:audioplayers/audioplayers.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:color_app/view/learning/learning_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../viewmodel/matching_colors_view_model/screen_screen.dart';
import 'matching_colors/view_page_1.dart';
class HomeScreen extends StatefulWidget {
 
   const HomeScreen({
    super.key,
    
    });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var player=AudioPlayer();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
   
      
      body: Stack(
        children: [
          
          Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/home_background.png'),
            
            fit: BoxFit.fill,
            ),
          ),
          
        ),

        Padding(
          padding: EdgeInsets.only(top: 20.0.w,right: 20.0.w),
          child: Column(
            children: [
        
              WindowTitleBarBox(
                child: Row(
               
                  children: [
                    Expanded(child: Container(),),
                    const WindowButton(),
                  ],
                ),
              ),
        
              
              Padding(
                padding: EdgeInsets.only(top: 60.0.w),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                    
                children: [
                  
                  Container
                  (
                    height: 20.0.h,
                    width: 150.0.w,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/colors_word.png'),fit: BoxFit.fill),
                    ),
                  ),
              
                        ],),
              ),
            Container(
              height: 2.0,
              width:200.0.w,
              color: const Color.fromARGB(255, 243, 182, 52),
            ),
        
            SizedBox(height:12.0.w,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                 Container(
                  height: 100.0.w,
                      width: 170.0.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 104, 175, 76),width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
        
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                        SizedBox(
                           height: 70.0.w,
                        width: 170.0.w,
                        child: IconButton(icon:Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/matching.png'),fit: BoxFit.fill),
                          ),
                        ) ,onPressed: (){
                         
                          player.play(AssetSource('button_music.wav'));
                          
                          
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Page1();
                                                      }));
                     
                        },),
                                   ),
                         Text('Color Matching',
                         style: GoogleFonts.boogaloo(
                          fontSize: 20.0.w,
                          foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=2..color=const Color.fromARGB(255, 58, 66, 175)
                         ),
                         ),          
                       ],
                     ),
                   ),
                 ),
                SizedBox(width: 20.0.w,),
                Container(
                   height: 100.0.w,
                      width: 170.0.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 104, 175, 76),width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                  child: SingleChildScrollView(
                    child: Column(
                      children:[ SizedBox(
                         height: 70.0.w,
                            width: 170.0.w,
                       
                        child: IconButton(icon:Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/colors_by_numbers.png'),
                            fit:BoxFit.fill),
                          ),
                        ) ,onPressed: (){
                          player.play(AssetSource('button_music.wav'));
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Screen();
                                                      }));
                    
                        },),
                      ),
                         Text('Coloring',
                           style: GoogleFonts.boogaloo(
                            fontSize: 20.0.w,
                            foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=2..color=const Color.fromARGB(255, 58, 66, 175)
                           ),
                           ), 
                      ],
                    ),
        
        
                  ),
                ),
                 SizedBox(width: 20.0.w,),
                 Container(
                    height: 100.0.w,
                        width: 170.0.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 104, 175, 76),width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                        SizedBox(
                      height: 70.0.w,
                        width: 100.0.w,
                       
                        child: IconButton(icon:Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/learning_colors/learning_colors.png'),fit: BoxFit.fill),
                          ),
                        ) ,onPressed: (){
                          player.play(AssetSource('button_music.wav'));
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const LearningColors();
                                                      }));
                     
                        },),
                                   ),
                                   Text('Learning colors',
                           style: GoogleFonts.boogaloo(
                            fontSize: 20.0.w,
                            foreground: Paint()..style=PaintingStyle.stroke..strokeWidth=2..color=const Color.fromARGB(255, 58, 66, 175)
                           ),
                           ),
                       ],  
        
                     ),
                   ),
                 ),
        
        
        
              ],
            ),
        
            ],
        
            
          ),
        ),
          

        
        ],
        
      ),
    );
  }
}

class WindowButton extends StatelessWidget {
  const WindowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        MinimizeWindowButton(),
        MaximizeWindowButton(),
        CloseWindowButton(),
      ],
    );
  }
}