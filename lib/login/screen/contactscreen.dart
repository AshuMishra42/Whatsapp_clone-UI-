import 'package:clone/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Contactscreen extends StatelessWidget {
  // const Contactscreen({super.key});

  var contactcontent = [
    {
      "name": "Payal kumari",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjWXzg8zgkqNGAs1T0QDzDHjoENaPgzLEIxA&s",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "name": "Savita kumari",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuBAaraRVEt5lBBF3td_MbQ5Dm02ZzpT4Vig&s/",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "name": "Raveena",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNp8eG1XX_ORNx9anzk6of25kJBpGQUojVhw&s",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "name": "Sonam",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrEIWiAIXNXfU_mV0nIQO4oG-gNPqvubloow&s",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "name": "Sanjida",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKGc93xTPg3Jy3MlhT2_10FS0FxN9HXLFaw&s",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "name": "Sanjh",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmQFm_o6GrvPQA7duvzYZqSnKXtVFrc45eQ&s",
      "status": "Hey there! I am using WhatsApp.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: UIHelper.CustomText(
          text: "Select Contact",
          height: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                contactcontent[index]['image'].toString(),
              ),
            ),
            title: UIHelper.CustomText(
              text: contactcontent[index]['name'].toString(),
              height: 16,
              fontWeight: FontWeight.bold,
            ),
            subtitle: UIHelper.CustomText(
              text: contactcontent[index]['status'].toString(),
              height: 14,
              color: Colors.grey,
            ),
          );
        },
        itemCount: contactcontent.length,
      ),
    );
  }
}
