import 'package:flutter/material.dart';

import '../../main.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import 'circular_and_item_container.dart';
import 'circular_item_widget.dart';
import 'icon_and_text.dart';

class BottomRow2 extends StatelessWidget {
  const BottomRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconAndText(
            icon: Icon(Icons.palette_rounded),
            text: AppString.colors,
          ),
          Row(
            children: [
              CircleAndItemContainer(
                child: CircularItemWidget(cirColor: AppColors.cir_color1),
              ),
              CircleAndItemContainer(
                child: CircularItemWidget(cirColor: AppColors.cir_color2),
              ),
              CircleAndItemContainer(
                child: CircularItemWidget(cirColor: AppColors.cir_color3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}