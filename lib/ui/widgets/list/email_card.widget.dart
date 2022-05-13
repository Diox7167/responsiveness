import 'package:flutter/material.dart';
import 'package:responsiveness/ui/widgets/widgets.dart';

import '../../../models/models.dart';

class EmailCardWidget extends StatelessWidget {
  final int index;
  final Email email;
  const EmailCardWidget({Key? key, required this.index, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EmailDetailsScreen(
                email: email,
                index: index,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Hero(
                          tag: "senderAvatar_$index",
                          child: SenderAvatar(sender: email.sender),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          child: Text(
                            email.sender.name,
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  EmailDeliveryInfo(email: email),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: EmailBodyPreview(email: email)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star_border),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
