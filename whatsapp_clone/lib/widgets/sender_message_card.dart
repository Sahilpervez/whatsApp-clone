import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({super.key, required this.message, required this.date});
  final String message;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: senderMessageColor,
              margin: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                    child: Text(message, style: TextStyle(fontSize: 16)),
                  ),
                  Positioned(
                      bottom: 2,
                      right: 10,
                      child: Row(
                        children: [
                          Text(date,
                              style:
                                  TextStyle(color: Colors.white60, fontSize: 13)),
                          SizedBox(width: 5),
                          const Icon(Icons.done_all,size:20,color: Colors.white60),
                        ],
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
