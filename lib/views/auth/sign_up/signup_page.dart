import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            Text("Please Tell Us Your Name *"),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
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
                    "Confirm Name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         null
              //       },
              //     ),
              //   );
              // },
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
