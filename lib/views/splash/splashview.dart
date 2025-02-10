import 'package:flutter/material.dart';
import 'package:phones_app/views/splash/splashviewmodel.dart';
import 'package:stacked/stacked.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => Splashviewmodel(),
      builder: (context, model, _) {
        return Scaffold(
          body: Center(
            child: Text("hello ${model.value}"),
          ),
          floatingActionButton:
              FloatingActionButton(onPressed: (model.increment)),
        );
      },
    );
  }
}
