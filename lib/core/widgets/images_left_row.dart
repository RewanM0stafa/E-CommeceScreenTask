import 'package:ecommerce_screen/core/widgets/side_img.dart';
import 'package:flutter/cupertino.dart';

import '../utils/app_assets.dart';
import 'circular_and_item_container.dart';

class ImagesLeftRow extends StatelessWidget {
  const ImagesLeftRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        // العمود
        children: [
          //dealing with ImageProvider => AssetImage
          SizedBox(width: 65, height: 65),
          CircleAndItemContainer(child: SideImg(img: AssetImage(Assets.img1))),
          SizedBox(height: 10),
          CircleAndItemContainer(child: SideImg(img: AssetImage(Assets.img2))),
          SizedBox(height: 10),
          CircleAndItemContainer(child: SideImg(img: AssetImage(Assets.img3))),
          SizedBox(height: 10),
          CircleAndItemContainer(child: SideImg(img: AssetImage(Assets.img4))),
        ],
      ),
    );
  }
}