import 'package:clone/login/screen/contactscreen.dart';
import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  //  const ChatScreen({super.key});

  var arrCount = [
    {
      "images": "assets/krishna.png",
      "name": "Ankush Kumar Mishra",
      "lastmsg": "Hey, how are you?",
      "time": "12:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Rishav Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "11:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Saurabh Sarkar",
      "lastmsg": "Hey, how are you?",
      "time": "10:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Anshul Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "10:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Vishal Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "6:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Ankush Kumar Mishra",
      "lastmsg": "Hey, how are you?",
      "time": "12:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Rishav Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "11:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Saurabh Sarkar",
      "lastmsg": "Hey, how are you?",
      "time": "10:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Anshul Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "10:30 PM",
      "msg": "8",
    },
    {
      "images": "assets/krishna.png",
      "name": "Vishal Kumar",
      "lastmsg": "Hey, how are you?",
      "time": "6:30 PM",
      "msg": "8",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      arrCount[index]['images'].toString(),
                    ),
                  ),

                  title: UIHelper.CustomText(
                    text: arrCount[index]['name'].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold,
                  ),

                  subtitle: UIHelper.CustomText(
                    text: arrCount[index]['lastmsg'].toString(),
                    height: 13,
                    color: Color(0XFF889095),
                  ),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      UIHelper.CustomText(
                        text: arrCount[index]['time'].toString(),
                        height: 12,
                        color: Color(0XFF026500),
                      ),

                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0XFF036A01),
                        child: UIHelper.CustomText(
                          text: arrCount[index]['msg'].toString(),
                          height: 12,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrCount.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contactscreen()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/Vector.png"),
        ),
      ),
    );
  }
}
