import 'package:flutter/material.dart';
import 'package:phones_app/views/home/widgets/brands/brandslist.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: brandslist.map((data) {
          return BrandContainer(image: data.image);
        }).toList(),
      ),
    );
  }
}

class BrandContainer extends StatelessWidget {
  final String image;
  const BrandContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF3F3F3),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
