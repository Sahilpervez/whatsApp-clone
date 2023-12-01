import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/wev_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              WebChatAppBar(),
              Expanded(child: ChatList()),
              Container(
                  height: max(65, MediaQuery.of(context).size.height * 0.08),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: dividerColor,
                      )),
                      color: chatBarMessage),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.emoji_emotions_outlined,
                              color: Colors.grey)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attach_file_rounded,
                              color: Colors.grey)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                              decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none)),
                                    contentPadding: EdgeInsets.only(left: 20)
                          )),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic,
                              color: Colors.grey)),
                      
                    ],
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
