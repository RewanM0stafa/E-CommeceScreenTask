import 'package:ecommerce_screen/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../functions/navigationRouter.dart';
import 'appNavBar.dart';

class PositionedNavBar extends StatelessWidget {
  const PositionedNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 45,
      right: 21,
      left: 22,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBar(
              alignment: Alignment.centerLeft,
              icon: Icon(Icons.arrow_back, size: 28),
              onTap: () {
                Navigator.pop(context);
              },
            ),
           /* NavBar(
              onTap: () {},
            ),*/
            FavHeart(),
          ],
        ),
      ),
    );
  }
}

class FavHeart extends StatefulWidget {
  const FavHeart({super.key});
  @override
  State<FavHeart> createState() => _FavHeartState();
}

class _FavHeartState extends State<FavHeart> {
   bool isFavorite= false;

  @override
  Widget build(BuildContext context) {
    return Align( alignment: Alignment.centerLeft,
    child: NavBar(icon: Icon(
      isFavorite ? Icons.favorite : Icons.favorite_border_outlined, // تغيير الأيقونة بناءً على الحالة
      size: 28,
      color: isFavorite ? Colors.red : Colors.black87, // تغيير اللون بناءً على الحالة
    ),

      onTap: () {
      setState(() {
        isFavorite = !isFavorite; // تغيير الحالة عند الضغط
      });
    },
    ),
    );
  }
}



