import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class Banner2 extends StatelessWidget {
  const Banner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0XFFF3F3F3),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(PhoneBanners.mech),
            ),
            Positioned(
              top: 101,
              left: 236,
              child: Container(
                height: 94,
                width: 94,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFFCC7D),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFCC7D),
                        blurRadius: 91,
                        spreadRadius: 40,
                      ),
                    ]),
              ),
            ),
            Positioned(
              top: 12,
              left: 196,
              child: Image.asset(PhoneBanners.paint),
            ),
          ],
        ),
      ),
    );
  }
}
