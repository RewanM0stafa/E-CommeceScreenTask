import 'package:flutter/material.dart';
import '../functions/navigationRouter.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({super.key, required this.path,  this.alignArrow, this.color});
  final String path;
  final Color? color;
  final Alignment? alignArrow ;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: alignArrow?? Alignment.centerRight ,
        child:  GestureDetector(
        onTap: () {
          customNavigate(context,path);
        },
        child:
        Icon(Icons.arrow_forward_ios_outlined, color: color,),
      )
    );
  }
}