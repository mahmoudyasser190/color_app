
import 'package:color_app/shared_components/coloring/whiteboard.dart';
import 'package:flutter/material.dart';

class Common extends StatefulWidget {

   const Common({super.key});

  @override
  State<Common> createState() => _CommonState();
}

class _CommonState extends State<Common> {
  var historyDrawingPoints =<DrawingPoint>[];

  var drawingPoints =<DrawingPoint>[];

  Color selectedColor=Colors.green;

  var selectedwidth=2.0;

  DrawingPoint? currentDrawingPoint;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanStart: (details) {
                setState(() {
                  
                });
                currentDrawingPoint=DrawingPoint(
                  id:DateTime.now().microsecondsSinceEpoch,
                  offsets: [
                    details.localPosition,
                  ],
                  color: selectedColor,
                  width: selectedwidth,
                );
                if(currentDrawingPoint==null)return;
                drawingPoints.add(currentDrawingPoint!);
                historyDrawingPoints=List.of(drawingPoints);
              },

              onPanUpdate: (details){
                setState(() {
                  
                });
                if(currentDrawingPoint==null)return;
                currentDrawingPoint= currentDrawingPoint?.copyWith(
                offsets: currentDrawingPoint!.offsets
                ..add(details.localPosition)
                );
                drawingPoints.last=currentDrawingPoint!;
                historyDrawingPoints=List.of(drawingPoints);
              },

              onPanEnd: (_){
                currentDrawingPoint==null;
              },

              child: CustomPaint(
                painter: DrawingPainter(
                  drawingPoints: drawingPoints,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
              
                ),
              ),


    );
  }
}
class DrawingPainter extends CustomPainter{
 
 final List<DrawingPoint> drawingPoints;
 DrawingPainter({required this.drawingPoints});
  @override
  void paint( Canvas canvas,Size size){
    for(var drawingPoint in drawingPoints){
      final paint= Paint()
      ..color= drawingPoint.color
      ..isAntiAlias=true
      ..strokeWidth= drawingPoint.width
      ..strokeCap= StrokeCap.round;
      for(var i=0;i<drawingPoint.offsets.length;i++){
        var notLastOffset=i !=drawingPoint.offsets.length-1;
        if(notLastOffset){
          final current= drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i+1];
          canvas.drawLine(current, next, paint);
        }else{

        }
      }
    }

  }
   @override
   bool shouldRepaint (covariant CustomPainter oldDelegate){
    return true;
   }

}