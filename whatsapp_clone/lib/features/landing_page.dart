import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : SafeArea(child: Column(
        children: [
          SizedBox(height: 50,),
          Text("Welcome to Whatsapp",style: TextStyle(
            fontSize: 33,fontWeight: FontWeight.w600  
          )),
        ],
      ))
    );
  }
}