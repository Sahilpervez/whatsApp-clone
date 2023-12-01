import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(60, MediaQuery.of(context).size.height * 0.08),
      width: MediaQuery.of(context).size.width * 0.75,
      color: webAppBarColor,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(info[0]['name'].toString(),
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded, color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
