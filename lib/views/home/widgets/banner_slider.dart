import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';
// import 'package:phones_app/utils/assets/assests.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 175,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 5),
        scrollDirection: Axis.horizontal,
        viewportFraction: 1,
      ),
      items: [
        Container(
          height: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PhoneBanners.lightsplash1),
            ),
          ),
        ),
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.pink),
        ),
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.deepOrange),
        ),
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.lightGreen),
        ),
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.purple),
        ),
      ],
    );
  }
}
