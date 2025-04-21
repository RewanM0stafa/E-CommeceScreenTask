import 'package:ecommerce_screen/core/widgets/icon_and_text.dart';
import 'package:ecommerce_screen/core/widgets/pinky_icon.dart';
import 'package:flutter/material.dart';
import '../core/functions/navigationRouter.dart';
import '../core/utils/app_strings.dart';
import '../core/widgets/button_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: ButtonWidget(
          onPressed:  (){
            customNavigate(context,"/eCommerce");
           },
          child:
           const IconAndText(
             icon: PinkyIcon(icon: Icon(Icons.ac_unit_rounded)),
             text: AppString.welcome,),

      )),

    );
  }
}
