import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/view/home_screen.dart';
import 'package:color_app/view/matching_colors/view_page_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared_components/matching_colors/color_model.dart';
import '../../shared_components/matching_colors/dialog.dart';
import '../../shared_components/matching_colors/images.dart';

class DragDrop1 extends StatefulWidget {
  const DragDrop1({super.key});

  @override
  State<DragDrop1> createState() => _DragDrop1State();
}

class _DragDrop1State extends State<DragDrop1> {
  var player=AudioPlayer();
   late int score;
 
   var list = Images(
    
  items:[
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_5.png', value: '5'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_6.png', value: '6'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_7.png', value: '7'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_8.png', value: '8'),
  ], 
  
  items2: [
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_5_5.png', value: '5'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_6_6.png', value: '6'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_7_7.png', value: '7'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_2/picture_8_8.png', value: '8'),

  ]);
  @override
  void initState() {
   
    super.initState();
     initGame();
  }
  initGame(){
    score=0;
    list.items;
    list.items2;
    list.items.shuffle();
    list.items2.shuffle();
  }
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0.w),
        child: Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                                children:List.from(list.items.map((item){
                                
                                  return Container(
                    
                                    margin: const EdgeInsets.all(12.0) ,
                    
                                    child: Draggable<colorsModel>(
                                      data: item,
                                      childWhenDragging:Container(
                                        height: 76.0.w,
                                        width: 76.0.w,
                                        decoration: BoxDecoration(image: DecorationImage(image:AssetImage('${item.image}'))),
                                      ),
                                      feedback:Container(
                                        height: 76.0.w,
                                        width: 76.0.w,
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('${item.image}'))),
                                        
                                      ),
                                      child: Container(
                                        height: 76.0.w,
                                        width: 76.0.w,
                                        decoration: BoxDecoration(
                                         
                                           borderRadius: BorderRadius.circular(10.0),
                                          image: DecorationImage(image: AssetImage('${item.image}'))),
                                      ),
                                    ),
                                  );}
                                ),
                                ),
                              ),
                              
                              SizedBox(height: 40.0.w,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:List.from(list.items2.map((item){
                                  return DragTarget<colorsModel>(
                                    onAccept: (receivedItem){
                                      if(item.value==receivedItem.value){
                                        setState(() {
                    
                                          item.image= receivedItem.image;
                                          list.items.remove(receivedItem);
                                        });
                                        score +=10;
                                        player.play(AssetSource('success_sound.mp3'));
                                        item.accepting=false;
                                          if(score==40){
                                          showDialog(context: context, 
                                          builder:(context){
                                            return DialogContainer(color:const Color.fromARGB(255, 88, 156, 168),borderColor: Colors.white,
                                            onPressed: (){
                                                 Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const HomeScreen();
                                              }));
                                            },
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const Page3();
                                              }));
                                            },
                                            );
                                          }
                                         
                                          );
                                        }
                    
                                      }else{
                                        score -=5;
                                        item.accepting=false;
                                      }
                                    },
                                    onWillAccept: (receivedItem)=>true,
                                    builder:(context,acceptedItems,rejectedItems)=> Container(
                    
                                      margin: const EdgeInsets.all(12.0) ,
                    
                                      child: Container(
                                        height: 76.0.w,
                                        width: 76.0.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                         
                                           borderRadius: BorderRadius.circular(10.0),
                                          image: DecorationImage(image: AssetImage('${item.image}'))),
                    
                                      ),
                                    ),
                                  );}
                                ),
                                ),
                              ),
          
                              
                  ],
                ),
      ),
    ); 
            
    
  }
  
}