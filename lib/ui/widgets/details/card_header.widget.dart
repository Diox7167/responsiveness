import 'package:flutter/material.dart';
import 'package:responsiveness/models/email.dart';

import '../widgets.dart';

class CardHeaderWidget extends StatelessWidget {
  final Email email;
  const CardHeaderWidget({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SenderAvatar(
              sender: email.sender,
              radius: 30.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SenderDetails(
                  email: email,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
