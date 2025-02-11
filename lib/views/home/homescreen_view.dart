import 'package:flutter/material.dart';
import 'package:phones_app/utils/assets/assests.dart';
import 'package:phones_app/views/home/widgets/banners/banner_slider.dart';
import 'package:phones_app/views/home/widgets/brands/brand_view.dart';
import 'package:phones_app/views/home/widgets/options/option_view.dart';

class HomescreenView extends StatelessWidget {
  const HomescreenView({super.key});

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
            SizedBox(height: 10),
            BannerSlider(),
            SizedBox(height: 10),
            SizedBox(
              height: 24,
              width: 196,
              child: Text(
                "Whats on your mind ?",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            OptionView(),
            SizedBox(height: 10),
            SizedBox(
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Top brands",
                    style: TextStyle(fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            BrandView(),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 105,
                height: 51,
                decoration: BoxDecoration(
                  color: Color(0xFF363636),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xFFF6C018), width: 4),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "sell",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF6C018),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Color(0xFFF6C018),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 24,
              width: 196,
              child: Text(
                "Beast deals in India",
                style: TextStyle(fontSize: 18),
              ),
            ),
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
