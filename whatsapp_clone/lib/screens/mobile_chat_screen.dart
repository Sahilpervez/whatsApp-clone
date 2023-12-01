import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text(info[0]['name'] as String),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/backgroundImage.png"),
                      fit: BoxFit.fitHeight)),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ChatList(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              // filled: true,
              // fillColor: mobileChatBoxColor,
              // prefixIcon: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
              // ),
              // suffix: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Icon(Icons.camera_alt_rounded, color: Colors.grey),
              //       Icon(Icons.attach_file_rounded, color: Colors.grey),
              //       Icon(Icons.money, color: Colors.grey),
              //     ],
              //   ),
              // ),
              // hintText: "Type a message",
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20),
              //   borderSide: BorderSide(width: 0, style: BorderStyle.none),
              // ),
              contentPadding: EdgeInsets.all(10),
              prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey),),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                IconButton(onPressed: (){},icon: Icon(Icons.camera_alt_rounded,color: Colors.grey),),
                IconButton(onPressed: (){},icon: Icon(Icons.attach_file_rounded,color: Colors.grey),),
                IconButton(onPressed: (){},icon: Icon(Icons.mic,color: Colors.grey),),
              ],)
            ),
          )
        ],
      ),
    );
  }
}
