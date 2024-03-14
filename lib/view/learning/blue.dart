import 'package:color_app/view/learning/learning_colors.dart';
import 'package:color_app/view/learning/pink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

/// Stateful widget to fetch and then display video content.
class Blue extends StatefulWidget {
  const Blue({super.key});

  @override
  State<StatefulWidget> createState() => _VideoAppState();
}

class _VideoAppState extends State<Blue> {
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
        'https://github.com/OmaymaSalem/videos/assets/145923636/27da7040-2573-42f2-9a66-04cad1f96971'));
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
                                                        return const Pink();
                                                      }));
     }, icon:const Icon(Icons.arrow_back_outlined),color: Colors.white,iconSize: 30.0.w,),
     SizedBox(width: 20.0.w,),
   MaterialDesktopPlayOrPauseButton(
      iconSize: 30.0.w,
     ),
       SizedBox(width: 20.0.w,),
  
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