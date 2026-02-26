import 'package:clone/login/screen/callscreen.dart';
import 'package:clone/login/screen/camerascreen.dart';
import 'package:clone/login/screen/chatscreen.dart';
import 'package:clone/login/screen/statusscreen.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(child: Image.asset("assets/camera.png", height: 25)),
              Tab(
                child: UIHelper.CustomText(
                  text: "CHATS",
                  height: 14,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: UIHelper.CustomText(
                  text: "STATUS",
                  height: 14,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: UIHelper.CustomText(
                  text: "CALLS",
                  height: 14,
                  color: Colors.white,
                ),
              ),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,

          title: UIHelper.CustomText(
            text: " WhatsApp",
            height: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Search.png", height: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            Statusscreen(),
            Callscreen(),
          ],
        ),
      ),
    );
  }
}
