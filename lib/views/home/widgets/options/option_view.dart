import 'package:flutter/material.dart';
import 'package:phones_app/views/home/widgets/options/optionslist.dart';

class OptionView extends StatelessWidget {
  const OptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: optionslist.map(
          (data) {
            return OptionContainer(image: data.image, text: data.text);
          },
        ).toList(),
      ),
    );
  }
}

class OptionContainer extends StatelessWidget {
  final String image;
  final String text;
  const OptionContainer({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 38,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
