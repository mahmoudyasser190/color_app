import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/colors.dart';
import '../../shared_components/matching_colors/decoration.dart';
import '../../shared_components/matching_colors/internal_container.dart';
import '../../viewmodel/matching_colors_view_model/view_model_page_5.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  var data= colors(color: Color.fromARGB(255, 211, 58, 65));
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
              
               const DragDrop4(),
          ]),
               
          
        ),
      ),
        
     
    );
  }
}