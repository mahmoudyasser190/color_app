import 'package:flutter/material.dart';

class DrawingPoint {

  int  id;
  double width;
  Color  color;
  List <Offset> offsets;

  DrawingPoint({
  this.id=-1,
  this.offsets= const [],
  this.width=2 ,
  this.color= Colors.black,
});
DrawingPoint copyWith ({List <Offset>? offsets}){
  return DrawingPoint(

  id: id,
   color: color,
   width: width,
  offsets: offsets ?? this.offsets,
  );
}

}