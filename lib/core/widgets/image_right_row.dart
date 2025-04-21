import 'package:flutter/cupertino.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class ImageRightRow extends StatelessWidget {
  const ImageRightRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded( // الصورة
      flex: 3,
      child: Container(
        height: 450,
        decoration: BoxDecoration(
          color: AppColors.babyPink,
          borderRadius: BorderRadius.circular(10),
          ),
          child:Padding(
            padding: EdgeInsets.only(top: 90,left: 70,right: 60),
            child: Image(
                image: AssetImage(Assets.mainImg),
                width: 250,
                height: 250,
            ),

          )
        ),

    );
  }
}