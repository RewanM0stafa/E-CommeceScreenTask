import 'package:flutter/material.dart';
import '../core/utils/app_colors.dart';
import '../core/widgets/bottom_1.dart';
import '../core/widgets/bottom_2.dart';
import '../core/widgets/divider1.dart';
import '../core/widgets/image_right_row.dart';
import '../core/widgets/images_left_row.dart';
import '../core/widgets/positioned_nav_bar.dart';
import '../core/widgets/rate_and-title.dart';
import '../core/widgets/text_and_button.dart';
import '../core/widgets/text_info.dart';


class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 2),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: <Widget>[
                  Column(
                    //من السكرين جزء كامل
                    children: [
                      Row(
                        // قسمت الجزء دا لصف فيه عمود وصورة
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // العمود
                          ImagesLeftRow(),

                          // الصورة
                          ImageRightRow(),
                        ],
                      ),
                    ],
                  ),

                  PositionedNavBar(),
                ],
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RateAndTitle(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(child: TextInfo()),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(child: BottomRow1()),
            SliverToBoxAdapter(child:Divider1()),
            SliverToBoxAdapter(child: BottomRow2()),
            SliverToBoxAdapter(child: SizedBox(height: 70)),
            SliverToBoxAdapter(child: TextAndButton()),
          ],
        ),
      ),
    );
  }
}

