import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

class PinkyIcon extends StatelessWidget {
  const PinkyIcon({super.key, required this.icon});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: AppColors.babyPink,
        borderRadius: BorderRadius.circular(10),
      ),
      child: icon,
    );
  }
}