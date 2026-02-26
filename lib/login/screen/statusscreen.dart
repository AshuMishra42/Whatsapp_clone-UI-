import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Statusscreen extends StatelessWidget {
  //  const Statusscreen({super.key});

  var statuscontent = [
    {
      "name": "Girlfriend 1",
      "time": "Today, 10:00 AM",
      "image": "https://photosweek.in/wp-content/uploads/Trendy-Girl-DP-1.jpg",
    },
    {
      "name": "Girlfriend 2",
      "time": "Today, 9:30 AM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4TePKypTU_OeGxgEUBGyIx1SQ4eiHW9qxg&s",
    },
    {
      "name": "Girlfriend 3",
      "time": "Yesterday, 5:45 PM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaM1tFmfYJ_GEcGnFvR9_I-VeXHR_IaPBbvQ&s",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 30),
              UIHelper.CustomText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/048/216/761/small/modern-male-avatar-with-black-hair-and-hoodie-illustration-free-png.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UIHelper.CustomText(text: "My Status", height: 20),
            subtitle: UIHelper.CustomText(
              text: "Tap to add status update",
              height: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UIHelper.CustomText(text: "Recent updates", height: 15),
                //   UIHelper.CustomText(text: "View all", height: 15, color: Colors.green)
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      statuscontent[index]["image"].toString(),
                    ),
                  ),
                  title: UIHelper.CustomText(
                    text: statuscontent[index]["name"].toString(),
                    height: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UIHelper.CustomText(
                    text: statuscontent[index]["time"].toString(),
                    height: 14,
                    color: Colors.grey,
                  ),
                );
              },
              itemCount: statuscontent.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
