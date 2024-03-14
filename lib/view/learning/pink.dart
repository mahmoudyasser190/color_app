import 'package:color_app/view/learning/blue.dart';
import 'package:color_app/view/learning/learning_colors.dart';
import 'package:color_app/view/learning/yellow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

/// Stateful widget to fetch and then display video content.
class Pink extends StatefulWidget {
  const Pink({super.key});

  @override
  State<StatefulWidget> createState() => _VideoAppState();
}

class _VideoAppState extends State<Pink> {
  // Create a [Player] to control playback.

  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(
    player,
   
    );

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
    player.open(Media(
        'https://github.com/OmaymaSalem/videos/assets/145923636/7b87bde0-d7ad-4a26-83a7-6d1e8f271884'));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialDesktopVideoControlsTheme(
  normal: MaterialDesktopVideoControlsThemeData(
    // Modify theme options:
    seekBarThumbColor: Colors.white,
    seekBarPositionColor: Colors.green,
    toggleFullscreenOnDoublePress: true,
    // Modify top button bar:
    topButtonBar: [
      const Spacer(),
      MaterialDesktopCustomButton(
        onPressed: () {
          player.dispose();
            Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const LearningColors();
                                                      }));
         
        },
        icon: const Icon(Icons.clear),
        iconSize:20.0.w,
      ),
    ],
    // Modify bottom button bar:
    bottomButtonBar: [
      const Spacer(),
     IconButton(onPressed:(){
          player.dispose();

        Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Yellow();
                                                      }));
     }, icon:const Icon(Icons.arrow_back_outlined),color: Colors.white,iconSize: 30.0.w,),
      SizedBox(width: 20.0.w,),
       MaterialDesktopPlayOrPauseButton(
      iconSize: 30.0.w,
     ),
     SizedBox(width: 20.0.w,),
     IconButton(onPressed:(){
       player.dispose();

        Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Blue();
                                                      }));
     }, icon:const Icon(Icons.arrow_forward_outlined),color: Colors.white,iconSize: 30.0.w,),
     const  Spacer(),
     
    ],
  ),
  fullscreen: const MaterialDesktopVideoControlsThemeData(),
  child: Scaffold(
    body: Video(
      controller: controller,
    ),
  ),
);

  }
}