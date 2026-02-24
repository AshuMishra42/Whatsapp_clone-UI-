// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
import 'dart:async';

import 'package:clone/onboarding/screen/onboarding.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  // it shows parent class of initstate method
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState(); //
}

class _SplashScreenState extends State<SplashScreen> {
  // this is the state class of splash screen

  @override
  void initState() {
    super.initState(); // it shows child class initState method
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/ankit.png", height: 120),
            SizedBox(
              height: 20
              ),
            UIHelper.CustomText(
              text: "Whatsapp",
              height: 15,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
