import 'package:flutter/material.dart';
import 'package:my_app/my_home_page.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(title: 'Stateful Widget'));
  }
}
