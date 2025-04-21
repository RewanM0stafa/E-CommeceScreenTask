import 'package:flutter/material.dart';
import '../core/widgets/try_go_home.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TryGoHome(),
        ),

       SizedBox(width: 20,),
       Align(
        alignment: Alignment.center,
        child: Text("Cart",),)
        ,

      ]
    )
    );
  }
}
