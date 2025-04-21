import 'package:ecommerce_screen/core/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import '../functions/navigationRouter.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_textStyles.dart';
import 'arrow_widget.dart';
import 'button_widget.dart';


class TextAndButton extends StatelessWidget {
  const TextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
                text: TextSpan(
                    children:[
                      TextSpan(text: AppString.xmPrice_1, style: CustomTextStyle.poppins22w600blc),
                      TextSpan(text:AppString.xmPrice_2, style: CustomTextStyle.poppins14w500blc.copyWith(fontSize:18,color: Colors.black54)),
                    ]
                )
            ),
                 ButtonWidget(
                   onPressed:  (){
                    customNavigate(context,"/cartList");
                   },
                  child: TextAndIcon(
                    text: AppString.addToCart, style: CustomTextStyle.poppins14w500blc.copyWith(color: Colors.white ),
                    icon: ArrowWidget(path:"/cartList", color: Colors.white,))
            ),

            ]
        )

    );
  }
}

