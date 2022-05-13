import 'package:flutter/material.dart';
import 'package:responsiveness/data.dart';
import 'package:responsiveness/ui/widgets/list/email_card.widget.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsiveness App"),
      ),
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: emails.length,
            itemBuilder: (context, index) {
              final email = emails[index];
              return EmailCardWidget(
                email: email,
                index: index,
              );
            },
          ),
        );
      }),
    );
  }
}
