import 'package:clone/login/screen/mainscreen.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Third extends StatefulWidget {
  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  // const Third({super.key});
  TextEditingController nameController = TextEditingController();
  File? _pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            UIHelper.CustomText(
              text: "Profile your info",
              height: 16,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: "Please Provide your name and an optional",
                  height: 15,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: "profile photo", height: 15),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child:_pickedimage == null?
                   CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(0XFFD9D9D9),
                      child: Image.asset(
                        "assets/camera.png",
                        height: 60,
                  fit: BoxFit.cover,
                ),
              ):CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(_pickedimage!),
                    ),  
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type your name",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05A882)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05A882)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05A882)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/emoji.png", height: 30),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
        buttonname: "Next",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      pickimage(ImageSource.camera);
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      color: Color(0XFF05A882),
                      size: 80,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      pickimage(ImageSource.gallery);
                    },
                    icon: Icon(
                      Icons.photo_library,
                      color: Color(0XFF05A882),
                      size: 80,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  pickimage(ImageSource imagesource) async {
    try {
      final pickedimage = await ImagePicker().pickImage(source: imagesource);
      if (pickedimage == null) return;
      final tempimage = File(pickedimage.path);
      setState(() {
        _pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(ex.toString())));
    }
  }
}
