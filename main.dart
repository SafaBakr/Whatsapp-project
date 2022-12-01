import 'package:flutter/material.dart';
import 'package:whatsapp_project/colors_app.dart';
import 'package:whatsapp_project/layout.dart';
import 'GUI/layout_chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const AppLayout(
        PageLayout: PageLayout(),
      ),
    );
  }
}
