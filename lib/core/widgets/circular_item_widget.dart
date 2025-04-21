import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

class CircularItemWidget extends StatelessWidget {
  const CircularItemWidget({super.key, required this.cirColor});
  final Color? cirColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: cirColor,
        border: Border.all(color: AppColors.lightGrey),
      ),
    );
  }
}