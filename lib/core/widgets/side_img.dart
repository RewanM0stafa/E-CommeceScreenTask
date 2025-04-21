import 'package:flutter/cupertino.dart';

class SideImg extends StatelessWidget {
  const SideImg({super.key, required this.img});
  final ImageProvider img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),

      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(image: DecorationImage(image: img)),
      ),
    );
  }
}