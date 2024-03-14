
import 'package:flutter/material.dart';

class Style extends StatelessWidget {
  double ?hight;
  double ?width;
  final String image;
  

   Style({
    super.key,
    this.hight,
    this.width,
    required this.image,
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage(image)),
      ),


    );
  }
}

class StyleBotton extends StatefulWidget {
  final double hight;
  final double width;
  final String image;
  final Function onPressed;
  const StyleBotton({
    super.key,
    required this.hight,
    required this.width,
    required this.image,
    required this .onPressed,
    });

  @override
  
  State<StyleBotton> createState() => _StyleBottonState();
}

class _StyleBottonState extends State<StyleBotton> {
  @override
  void setState(VoidCallback fn) {
   
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          height: widget.hight,
          width: widget.width,
          child: IconButton(icon: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.image))),
          ),
            onPressed: widget.onPressed(),
          ),
          


    );
  }
}