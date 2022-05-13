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
            Expanded(
              child: Text(
                email.sender.name,
                style: Theme.of(context).textTheme.titleLarge,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Flexible(child: EmailDeliveryInfo(email: email)),
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
