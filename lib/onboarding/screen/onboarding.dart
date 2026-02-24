import 'package:clone/login/screen/first.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/whats1.png"),
            SizedBox(height: 20),
            UIHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0xFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: "Read Out ", height: 14),
                UIHelper.CustomText(
                  text: "Privacy Policy.",
                  height: 14,
                  color: Color(0xFF0000FF),
                ),
                UIHelper.CustomText(
                  text: " Tap ''Agree and Continue''",
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: "to Accept the ", height: 14),
                UIHelper.CustomText(
                  text: " Terms of Service. ",
                  height: 14,
                  color: Color(0xFF0000FF),
                ),
              ],
            ),

            // We can make an button in two ways first by help of uihelper
            SizedBox(height: 150),
            UIHelper.CustomButton(
              buttonname: "AGREE AND CONTINUE",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => First()),
                );
              },
            ),

            // FloatingActionButton:   UIHelper.CustomButton(
            //   buttonname: "AGREE AND CONTINUE",
            //   callback: () {
            // Navigator.push(                   FloatingActionButton ko aap Column ke andar likh rahe ho,
            //jabki ye Scaffold ka property hota hai — Column ka nahi. Isliye aapko FloatingActionButton ko Scaffold ke andar, Column ke bahar likhna hoga. Aapko is tarah se code likhna hoga:
            //   context,
            //   MaterialPageRoute(builder: (context) => First()),
            // );
            //   },
            // ),
            // FloatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          ],
        ),
      ),
    );
  }
}
