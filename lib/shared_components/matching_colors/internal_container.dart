import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewModel extends StatelessWidget {
  
  
  
  final Color containerColor;
 
  const ViewModel({
    super.key,
   
    required this.containerColor,
  
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
        
      ),
      child: Container(
          height: 30.0.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
          height: 30.0.h,
          width: 30.0.w,
           decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/stars_left.png')),
           ),
        ),
        SizedBox(width: 5.0.w,),
              
               Center(
              child: Text('MATCH BY COLOR',
              style: GoogleFonts.boogaloo(
                color: Colors.white,
                fontSize: 20.0.w,
              ),
              
              ),
            ),
            SizedBox(width: 5.0.w,),
             Container(
          height: 30.0.h,
          width: 30.0.w,
           decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/stars_left.png')),
           ),
        ),
            ],
          ),
        
      ),
    );
  }
}