import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class Banner3 extends StatelessWidget {
  const Banner3({super.key});

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
              top: 100,
              left: 148,
              child: Image.asset(PhoneBanners.samsung),
            ),
            Positioned(
              top: 90,
              left: 278,
              child: Image.asset(PhoneBanners.mi),
            ),
            Positioned(
              left: 176,
              child: Image.asset(PhoneBanners.girl),
            ),
          ],
        ),
      ),
    );
  }
}
