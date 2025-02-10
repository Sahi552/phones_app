import 'package:flutter/material.dart';
import 'package:phones_app/views/auth/verification/verification_page_model.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => VerificationPageModel(),
        builder: (context, model, _) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage("asset/images/logo.png"),
                        height: 116,
                        width: 61,
                      ),
                      SizedBox(height: 100),
                      Text("Verify Mobile No."),
                      SizedBox(height: 20),
                      SizedBox(
                        child: Text(
                            "Please enter the 4 digital verification code sent to your mobile number +91-7587329682 via SMS"),
                      ),
                      Text("Enter Your Phone Number"),
                      SizedBox(height: 100),
                      Pinput(),
                      Text("${model.value}"),
                      SizedBox(height: 100),
                      Text("Didn’t receive OTP?"),
                      Text("Resend OTP in 0:23 Sec"),
                      SizedBox(height: 100),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            "Verify Otp",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
