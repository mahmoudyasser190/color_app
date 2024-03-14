import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/shared_components/matching_colors/dialog.dart';
import 'package:color_app/view/matching_colors/view_page_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/color_model.dart';
import '../../shared_components/matching_colors/images.dart';
import '../../view/home_screen.dart';

class DragDrop2 extends StatefulWidget {
  const DragDrop2({super.key});

  @override
  State<DragDrop2> createState() => _DragDrop2State();
}

class _DragDrop2State extends State<DragDrop2> {
  var player=AudioPlayer();
   late int score;
 
   var list = Images(
    
  items:[
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture9.png', value: '9'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture10.png', value: '10'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture11.png', value: '11'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture12.png', value: '12'),
  ], 
  
  items2: [
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture9_9.png', value: '9'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture10_10.png', value: '10'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture11_11.png', value: '11'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_3/picture12_12.png', value: '12'),

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
        padding: EdgeInsets.only(top:20.0.w ),
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
                                            return DialogContainer(color:const Color.fromARGB(255, 128, 47, 107),borderColor: Colors.white,
                                            onPressed: (){
                                                 Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const HomeScreen();
                                              }));
                                            },
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const Page4();
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