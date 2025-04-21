import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_textStyles.dart';

class RateAndTitle extends StatelessWidget {
  const RateAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppString.headPhoneXM, style: CustomTextStyle.poppins22w600blc),
        Container(
          padding: EdgeInsets.only(left: 3, right: 4, bottom: 4, top: 2),
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.lightGrey),
          ),
          child: Row(
            children: [
              Icon(Icons.star, color: AppColors.yellow,size: 20,),
              Text(AppString.rateXM,style: CustomTextStyle.poppins11w400blc,),
            ],
          ),
        ),
      ],
    );
  }
}