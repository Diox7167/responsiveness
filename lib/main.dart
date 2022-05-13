import 'package:flutter/material.dart';
import 'package:responsiveness/theme/theme.dart';
import 'package:responsiveness/ui/screens/email_list.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsiveness',
      theme: lightTheme,
      home: const EmailListScreen(),
    );
  }
}
