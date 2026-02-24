import 'package:clone/login/screen/third.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  // const Second({super.key});

  String phonenumber;
  Second({required this.phonenumber});

  TextEditingController second1Controller = TextEditingController();

  TextEditingController second2Controller = TextEditingController();

  TextEditingController second3Controller = TextEditingController();

  TextEditingController second4Controller = TextEditingController();

  TextEditingController second5Controller = TextEditingController();

  TextEditingController second6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            UIHelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: "you have tried to register +91 ${phonenumber} ",
                  height: 15,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: " recently. Wait before requesting an sms or a call",
                  height: 15,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: "with your code.", height: 15),
                TextButton(
                  onPressed: () {},
                  child: UIHelper.CustomText(
                    text: "Wrong Number?",
                    height: 15,
                    color: Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomContainer(second1Controller),
                SizedBox(width: 10),
                UIHelper.CustomContainer(second2Controller),
                SizedBox(width: 10),
                UIHelper.CustomContainer(second3Controller),
                SizedBox(width: 10),
                UIHelper.CustomContainer(second4Controller),
                SizedBox(width: 10),
                UIHelper.CustomContainer(second5Controller),
                SizedBox(width: 10),
                UIHelper.CustomContainer(second6Controller),
              ],
            ),
            SizedBox(height: 70),
            UIHelper.CustomText(
              text: "Didn't receive the code?",
              height: 15,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
        buttonname: "Next",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Third()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
