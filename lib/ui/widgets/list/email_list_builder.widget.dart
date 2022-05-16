import 'package:flutter/material.dart';
import 'package:responsiveness/models/email.dart';
import 'package:responsiveness/ui/widgets/list/email_card.widget.dart';

import '../../../data.dart';

class EmailListBuilderWidget extends StatelessWidget {
  final Function(Email?)? selectedEmail;
  const EmailListBuilderWidget({Key? key, this.selectedEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: emails.length,
            itemBuilder: (context, index) {
              final email = emails[index];
              return EmailCardWidget(
                email: email,
                index: index,
                selectedEmail: selectedEmail,
              );
            },
          ),
        );
      },
    );
  }
}
