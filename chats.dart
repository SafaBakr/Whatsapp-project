// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:whatsapp_project/WidgetsApp/my_messages.dart';
import 'package:whatsapp_project/data.dart';
import 'package:whatsapp_project/WidgetsApp/my_messages.dart';
import 'package:whatsapp_project/WidgetsApp/contacts_messages.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessages(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return ContactsMessages(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
