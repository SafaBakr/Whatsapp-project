// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget PageLayout;
  const AppLayout({
    Key? key,
    required this.PageLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return PageLayout;
      },
    );
  }
}
