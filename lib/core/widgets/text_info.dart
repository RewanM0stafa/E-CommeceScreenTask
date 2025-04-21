import 'package:flutter/cupertino.dart';

import '../utils/app_textStyles.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Wireless Over-ear Industry LeadingNoise Canceling HeadPhones With MicroPhone",
          style: CustomTextStyle.poppins14w500blc.copyWith(fontSize: 12,),
        )
    );
  }
}