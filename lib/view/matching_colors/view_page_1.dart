
import 'package:color_app/viewmodel/matching_colors_view_model/view_model_page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/colors.dart';
import '../../shared_components/matching_colors/decoration.dart';
import '../../shared_components/matching_colors/internal_container.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var data= colors(color: const Color.fromARGB(255, 180, 80, 184));
  var Decoration= decoration(color1: Colors.white, radius:15.0.sp);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor:data.color,
      body: Padding(
        padding:  EdgeInsets.symmetric(
          vertical: 20.0.w,    
         horizontal: 20.0.w,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Decoration.color1,
            borderRadius: BorderRadius.circular(Decoration.radius),
          ),
          child: Column(children: [
             ViewModel(
              containerColor: data.color),
              
               const DragDrop(),
          ]),
               
          
        ),
      ),
        
     
    );
  }
}