import 'package:flutter/material.dart';
import 'package:phones_app/views/auth/verification/verification_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            Text("WELCOME"),
            SizedBox(height: 20),
            Text("Sign in to continue"),
            Text("Enter Your Phone Number"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: null),
                Text("Accept Terms and condition")
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Center(
                  child: Text(
                    "Next ->",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerificationPage(),
                  ),
                );
              },
            ),
            // showBottomSheet(
            //   context: context,
            //   builder: (context) {
            //     return Container(
            //       child: Text(
            //         'hello'
            //       ),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
