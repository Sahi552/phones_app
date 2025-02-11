import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class Banner4 extends StatelessWidget {
  const Banner4({super.key});

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
              left: 109,
              child: Image.asset(PhoneBanners.boy),
            ),
            Positioned(
              top: 90,
              child: Image.asset(PhoneBanners.pig),
            ),
          ],
        ),
      ),
    );
  }
}
