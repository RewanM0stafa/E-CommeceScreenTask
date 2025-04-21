
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class Divider1 extends StatelessWidget {
  const Divider1({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      indent: 25,
      endIndent: 25,
      color: AppColors.cir_color2,
      thickness: 2,
    );
  }
}
