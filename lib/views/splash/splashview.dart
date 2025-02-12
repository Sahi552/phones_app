import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:phones_app/utils/assets/assests.dart';
import 'package:phones_app/views/splash/splashviewmodel.dart';
import 'package:stacked/stacked.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => Splashviewmodel(context),
        onViewModelReady: (model) => model.timer(),
        builder: (context, model, _) {
          return Scaffold(
            body: ListView(
              children: [
                LottieBuilder.asset(
                  Assests.splash,
                ),
              ],
            ),
          );
        });
  }
}
