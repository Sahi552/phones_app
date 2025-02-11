import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class Banner5 extends StatelessWidget {
  const Banner5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 358,
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Positioned(
              top: 55,
              left: 10,
              child: Image.asset(PhoneBanners.phone),
            ),
            Positioned(
              right: 0,
              child: Image.asset(PhoneBanners.right),
            ),
            Positioned(
              left: 0,
              child: Image.asset(PhoneBanners.left),
            ),
          ],
        ),
      ),
    );
  }
}
