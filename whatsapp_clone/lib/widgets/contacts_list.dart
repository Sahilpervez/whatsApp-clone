import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (ctx, idx) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 3
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> MobileChatScreen()));
                },
                child: Column(
                  children: [
                    ListTile(
                      title: Text(info[idx]['name'].toString(),
                          style: const TextStyle(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(info[idx]['message'].toString(),
                            style: const TextStyle(fontSize: 15)),
                      ),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage:
                            NetworkImage(info[idx]['profilePic'].toString()),
                      ),
                      trailing: Text(info[idx]['time'].toString(),
                          style: const TextStyle(fontSize: 13, color: Colors.grey)),
                    ),
                    const Divider()
                  ],
                ),
              ),
            );
          }),
    );
  }
}
