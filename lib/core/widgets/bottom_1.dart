import 'package:ecommerce_screen/core/functions/navigationRouter.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';
import 'arrow_widget.dart';
import 'icon_and_text.dart';

class BottomRow1 extends StatelessWidget {
  const BottomRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconAndText(
            icon:
            Icon(Icons.list_alt_sharp),
            text: AppString.prodEsp,
          ),
            ArrowWidget( path: "/prodSpec"),
          ],
      ),
    );
  }
}

