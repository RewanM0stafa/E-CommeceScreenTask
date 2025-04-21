import 'package:ecommerce_screen/core/widgets/pinky_icon.dart';
import 'package:flutter/cupertino.dart';

import '../utils/app_textStyles.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({super.key, required this.icon, required this.text});
  final Widget icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PinkyIcon(icon: icon),
        SizedBox(width: 15),
        Text(text, style:
        CustomTextStyle.poppins14w500blc),
      ],
    );
  }
}



class TextAndIcon extends StatelessWidget {
  const TextAndIcon({super.key, required this.icon, required this.text, this.style});
  final Widget icon;
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: style??
        CustomTextStyle.poppins14w500blc),
        SizedBox(width: 15),
        icon,

      ],
    );
  }
}