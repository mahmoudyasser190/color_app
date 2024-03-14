import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/colors.dart';
import '../../shared_components/matching_colors/decoration.dart';
import '../../shared_components/matching_colors/internal_container.dart';
import '../../viewmodel/matching_colors_view_model/view_model_page_11.dart';
class Page11 extends StatefulWidget {
  const Page11({super.key});

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  var data= colors(color: Color.fromARGB(255, 152, 69, 177));
  var Decoration= decoration(color1: Colors.white, radius:15.0.sp);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:data.color,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,    
         horizontal: 20.0,
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
              
               const DragDrop10(),
          ]),
               
          
        ),
      ),
        
     
    );
  }
}