import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(50,MediaQuery.of(context).size.height * 0.08),
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: dividerColor,
      ))),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon:const  Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Icon(Icons.search,size: 20),)
          ,hintStyle: TextStyle(
            fontSize: 14
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: "Search or start a new chat",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0,style: BorderStyle.none
            ),
          )
        ),
      )
    );
  }
}
