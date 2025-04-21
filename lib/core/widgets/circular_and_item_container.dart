// بيكون بوردر لأي ويدجت هيستدعيه
import 'package:flutter/cupertino.dart';
import '../utils/app_colors.dart';

class CircleAndItemContainer extends StatefulWidget {
  const CircleAndItemContainer({super.key, required this.child});

  final Widget child;

  @override
  State<CircleAndItemContainer> createState() => CircleAndItemContainerState();
}


class CircleAndItemContainerState extends State<CircleAndItemContainer> {
  Color borderColor = AppColors.grayBackground;

  void changeBorderColor() {
    // اللي هتحددلي قيمة اللون لما يحصل Tap
    setState(() {
      final bool isSelected = (borderColor == AppColors.grayBackground);
      borderColor = isSelected ? AppColors.drawPink : AppColors.grayBackground;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBorderColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}