import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.onTap,this.alignment,this.textStyle, required this.icon,  this.color});
  final VoidCallback onTap;
  final Color? color;
  final Alignment? alignment;
  final TextStyle? textStyle;
  final Icon icon;


  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
      child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: widget.color?? AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        borderRadius:  BorderRadius.circular(15),
      ),

    // child:Align(
    //   alignment: alignment ?? Alignment.centerRight,
      child: GestureDetector(
          onTap: widget.onTap,
          child: widget.icon,


      ),
    )
    );
  }
}
