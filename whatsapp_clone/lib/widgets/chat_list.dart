import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: messages.length,
      itemBuilder: (ctx,i){
        if(messages[i]['isMe'] == true){
          return MyMessageCard(message: messages[i]['text'] as String, date: messages[i]['time'] as String); 
        }
         return SenderMessageCard(message: messages[i]['text'] as String, date: messages[i]['time'] as String);
      },
    );
  }
}