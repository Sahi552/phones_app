import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';
import 'package:phones_app/views/home/widgets/banner_slider.dart';

class HomescreenPage extends StatelessWidget {
  const HomescreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          scrollDirection: Axis.vertical,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              leading: Icon(Icons.line_weight_sharp),
              title: Image(
                image: AssetImage(Assests.appLogo),
                height: 24,
                width: 50,
              ),
              actions: [
                Text("India"),
                Icon(Icons.location_on_outlined),
                TextButton(
                  onPressed: () {},
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Login")),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_outlined),
                Icon(Icons.mic_none_rounded)
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  Containertab(name: "Sell Used Phone"),
                  Containertab(name: "Buy Used Phone"),
                  Containertab(name: "Compare prices"),
                  Containertab(name: "My profile"),
                  Containertab(name: "My listing"),
                  Containertab(name: "Service"),
                  Containertab(name: "Register your app"),
                  Containertab(name: "Get the App"),
                ],
              ),
            ),
            SizedBox(height: 30),
            BannerSlider(),
            SizedBox(height: 30),                        
          ],
        ),
      ),
    );
  }
}

class Containertab extends StatelessWidget {
  final String name;
  const Containertab({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), border: Border.all()),
      child: Center(
        child: Text(name),
      ),
    );
  }
}
