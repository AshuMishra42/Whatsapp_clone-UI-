import 'package:clone/login/screen/second.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  // const First({super.key});
  String selectedCountry = "India";

  List<String> countries = ["India", "USA", "UK", "Australia"];

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            UIHelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: "whatsapp will need to verify your phone",
                  height: 16,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: "number. Carrier charges may apply .",
                  height: 16,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: "What's My Number?",
                  height: 14,
                  color: Color(0XFF00A884),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country.toString()),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 172,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
        buttonname: "Next",
        callback: () {
                login(phoneController.text.toString());
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Second(phonenumber: phoneController.text.toString())),
          );

        }, 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber.isEmpty) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please enter your phone number"),backgroundColor: Colors.green,));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Second(phonenumber: phonenumber)),
      );
    }
  }
}
