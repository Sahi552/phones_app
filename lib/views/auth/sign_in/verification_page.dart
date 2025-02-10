import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 44,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 44,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 44,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
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
      ),
    );
  }
}
