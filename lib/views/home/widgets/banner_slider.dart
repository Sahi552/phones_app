import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 175,
        autoPlay: true,
        autoPlayInterval: Duration(milliseconds: 2500),
        autoPlayCurve: Curves.easeInOutBack,
        scrollDirection: Axis.horizontal,
        viewportFraction: 1,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
      items: [
        Container(
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
        ),
        Container(
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
        ),
        Container(
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
        ),
        Container(
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
        ),
        Container(
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
        ),
      ],
    );
  }
}
