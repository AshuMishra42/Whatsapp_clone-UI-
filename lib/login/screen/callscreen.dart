import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  // const Callscreen({super.key});

  var callcontent = [
    {
      "name": "Payal kumari",
      "time": "Today, 10:00 AM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjWXzg8zgkqNGAs1T0QDzDHjoENaPgzLEIxA&s",
    },
    {
      "name": "Savita kumari",
      "time": "Today, 9:30 AM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuBAaraRVEt5lBBF3td_MbQ5Dm02ZzpT4Vig&s/",
    },
    {
      "name": "Raveena",
      "time": "Yesterday, 5:45 PM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNp8eG1XX_ORNx9anzk6of25kJBpGQUojVhw&s",
    },
    {
      "name": "Sonam",
      "time": "Today, 10:00 AM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrEIWiAIXNXfU_mV0nIQO4oG-gNPqvubloow&s",
    },
    {
      "name": "Sanjida",
      "time": "Today, 9:30 AM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKGc93xTPg3Jy3MlhT2_10FS0FxN9HXLFaw&s",
    },
    {
      "name": "Sanjh",
      "time": "Yesterday, 5:45 PM",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmQFm_o6GrvPQA7duvzYZqSnKXtVFrc45eQ&s",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),

          Row(
            children: [
              SizedBox(width: 20),
              UIHelper.CustomText(
                text: " Recent Calls ",
                height: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      callcontent[index]["image"].toString(),
                    ),
                  ),
                  title: UIHelper.CustomText(
                    text: callcontent[index]["name"].toString(),
                    height: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UIHelper.CustomText(
                    text: callcontent[index]["time"].toString(),
                    height: 15,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0xFF075E54)),
                  ),
                );
              },
              itemCount: callcontent.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
