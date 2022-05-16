import 'package:flutter/material.dart';
import 'package:responsiveness/ui/widgets/list/email_list_builder.widget.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsiveness App"),
      ),
      body: const EmailListBuilderWidget(),
    );
  }
}
