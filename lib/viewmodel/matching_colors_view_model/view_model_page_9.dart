import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/color_model.dart';
import '../../shared_components/matching_colors/dialog.dart';
import '../../shared_components/matching_colors/images.dart';
import '../../view/home_screen.dart';
import '../../view/matching_colors/view_page_10.dart';

class DragDrop8 extends StatefulWidget {
  const DragDrop8({super.key});

  @override
  State<DragDrop8> createState() => _DragDrop8State();
}

class _DragDrop8State extends State<DragDrop8> {
  var player=AudioPlayer();
   late int score;
 
   var list = Images(
    
  items:[
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture33.png', value: '33'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture34.png', value: '34'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture35.png', value: '35'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture36.png', value: '36'),
  ], 

  items2: [
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture33_33.png', value: '33'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture34_34.png', value: '34'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture35_35.png', value: '35'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_9/picture36_36.png', value: '36'),

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
                                          border: Border.all(color: Color.fromARGB(255, 81, 145, 8),width: 3.0),
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
                                          item.accepting=false;
                                        if(score==40){
                                          showDialog(context: context, 
                                          builder:(context){
                                            return DialogContainer(color:const Color.fromARGB(255, 81, 145, 8),borderColor: Colors.white,
                                            onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const HomeScreen();
                                              }));
                                            },
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const Page10();
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
                                          border: Border.all(color: Color.fromARGB(255, 81, 145, 8),width: 3.0),
                                           borderRadius: BorderRadius.circular(10.0),
                                          shape: BoxShape.rectangle,
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