
import 'package:flutter/material.dart';
import '../functions/navigationRouter.dart';
import '../utils/app_colors.dart';
import 'appNavBar.dart';

class TryGoHome extends StatefulWidget {
  const TryGoHome({super.key});

  @override
  State<TryGoHome> createState() => _TryGoHomeState();
}

class _TryGoHomeState extends State<TryGoHome> {
  bool isPressed= false;
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 60, //
        width: 60,
        child: NavBar(
          icon: Icon(
            isPressed ? Icons.home : Icons.home_outlined,
            size: 45,
            color: isPressed ? AppColors.deepGrey : AppColors.drawPink ,
          ),
          onTap: () {
            setState(() {
              isPressed = !isPressed;
              customNavigate(context, "/");
            });
          },
        ),
      ),
    );
  }
}

