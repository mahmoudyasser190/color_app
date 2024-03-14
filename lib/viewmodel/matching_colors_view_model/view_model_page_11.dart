import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/shared_components/matching_colors/dialog.dart';
import 'package:color_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/color_model.dart';
import '../../shared_components/matching_colors/images.dart';

class DragDrop10 extends StatefulWidget {
  const DragDrop10({super.key});

  @override
  State<DragDrop10> createState() => _DragDrop10State();
}

class _DragDrop10State extends State<DragDrop10> {
  var player=AudioPlayer();
   late int score;
 
   var list = Images(
    
  items:[
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture41.png', value: '41'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture42.png', value: '42'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture43.png', value: '43'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture44.png', value: '44'),
  ], 

  items2: [
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture41_41.png', value: '41'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture42_42.png', value: '42'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture43_43.png', value: '43'),
     colorsModel(image: 'assets/images/matching_colors/matching_colors_page_11/picture44_44.png', value: '44'),

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
                                        decoration: BoxDecoration(
                                         
                                          image: DecorationImage(image:AssetImage('${item.image}'))),
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
                                           border: Border.all(color:const Color.fromARGB(255, 152, 69, 177),width: 3.0),
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
                                        
                                        item.accepting=false;
                                         player.play(AssetSource('success_sound.mp3'));
                                           if(score==40){
                                          showDialog(context: context, 
                                          builder:(context){
                                            return DialogContainer2(color:const Color.fromARGB(255, 152, 69, 177),borderColor: Colors.white,
                                           
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return  const HomeScreen();
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
                                          
                                          border: Border.all(color: const Color.fromARGB(255, 152, 69, 177),width: 3.0),
                                          
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