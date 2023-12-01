import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(child: Icon(Icons.comment,color: Colors.white),onPressed: (){},backgroundColor: tabColor,),
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("WhatsApp",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            centerTitle: false,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.grey),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded),
                  color: Colors.grey)
            ],
            bottom: TabBar(
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: tabColor,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Chats"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Status"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Calls"),
                  ),
                ]),
          ),
          body: ContactsList()),
    );
  }
}
