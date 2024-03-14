
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DialogContainer extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final VoidCallback onPressed;
  final VoidCallback onTap;
  const DialogContainer({
    super.key, 
    required this.color,
    required this.borderColor,
    required this.onPressed,
    required this.onTap,
  });

  @override 
  Widget build(BuildContext context) {
    return Dialog(
      
      child: Container(
        width: 350.0.w,
        height: 300.0.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7.0),
          border:Border.all(color:borderColor ,width: 3.0),
        ),
        child: Center(
          child: SingleChildScrollView(
            child:Column(
                
                children: [
                  SizedBox(
                    height: 60.0.h,
                    width: 170.0.w,
                    child:Center(
                      child: Text('Level Complete',
                      style: GoogleFonts.boogaloo(
                        color: Colors.white,
                        fontSize:30.0.w,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 70.0.w,
                    width: 80.0.w,
                   child: Lottie.asset('assets/stars.json',fit: BoxFit.fill),
                  ),
                   SizedBox(height: 30.0.sp,),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color:Colors.amber ,width: 2.0),
                      ),
                      child: IconButton(icon:const Icon(Icons.clear) ,onPressed: onPressed,
                           iconSize: 30.0.w,
                           color: color,
                        
                      ),
                    ),
                   SizedBox(width: 50.0.sp,),
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                         borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color:Colors.amber ,width: 2.0),
                      ),
                      child: IconButton(icon:const Icon(Icons.arrow_forward) ,onPressed: onTap,
                       iconSize: 30.0.w,
                           color: color,
                      ),
                    ),
                    
                  ],),
                ]
              ),
            
          ),
        ),
       
      
      ),
            
    );
  }
}

class DialogContainer2 extends StatelessWidget {
  final Color color;
  final Color borderColor;
  
  final VoidCallback onTap;
  const DialogContainer2({
    super.key, 
    required this.color,
    required this.borderColor,
    
    required this.onTap,
  });

  @override 
  Widget build(BuildContext context) {
    return Dialog(
      
      child: Container(
        width:350.0.w,
        height: 300.0.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7.0),
          border:Border.all(color:borderColor ,width: 3.0),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 35.0.h,
                  width: 170.0.w,
                  child:Center(
                    child: Text('Level Complete',
                    style: GoogleFonts.boogaloo(
                      color: Colors.white,
                      fontSize:20.0.w,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 70.0.w,
                  width: 80.0.w,
                 child: Lottie.asset('assets/stars.json',fit: BoxFit.fill),
                ),
            SizedBox(height: 30.0.sp,),
               Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color:Colors.amber ,width: 2.0),
                      ),
                      child: IconButton(icon:const Icon(Icons.clear) ,onPressed: onTap,
                           iconSize: 30.0.w,
                           color: color,
                        
                      ),
                    ),
          
             
              ]
            ),
          ),
        ),
       
      
      ),
            
    );
  }
}