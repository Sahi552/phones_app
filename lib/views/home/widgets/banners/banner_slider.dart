import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phones_app/views/home/homescreen_viewmodel.dart';
import 'package:phones_app/views/home/widgets/banners/page_indicator.dart';
import 'package:stacked/stacked.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomescreenViewmodel(),
      onViewModelReady: (viewModel) => viewModel.fetchBanner(),
      builder: (context, viewModel, child) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 175,
                // autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 2500),
                autoPlayCurve: Curves.easeInOutBack,
                scrollDirection: Axis.horizontal,
                viewportFraction: 1,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                onPageChanged: (index, reason) => viewModel.updateIndex(index),
              ),
              items: viewModel.banners,
            ),
            PageIndicator(
              currentIndex: viewModel.currentIndex,
              itemCount: viewModel.banners.length,
            ),
          ],
        );
      },
    );
  }
}
