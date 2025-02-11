import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(PhoneBanners.lightsplash), fit: BoxFit.cover),
        gradient: LinearGradient(
          colors: [
            Color(0xFFA2DBEE),
            Color(0xFF95D4E6),
            Color(0xFF5FB3CF),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 15,
              child: Image.asset(
                PhoneBanners.store,
                width: 133,
                height: 133,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(PhoneBanners.cloud),
            ),
            Positioned(
              top: 45,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Own a Shop?\n Boost Your Sales With Us",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: 144,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          "Register your store",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
