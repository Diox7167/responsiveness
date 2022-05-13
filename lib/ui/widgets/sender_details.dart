import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';

import 'widgets.dart';

class SenderDetails extends StatelessWidget {
  final Email email;
  const SenderDetails({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                email.sender.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Expanded(child: EmailDeliveryInfo(email: email)),
          ],
        ),
        const Divider(),
        Text(
          email.sender.email,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
