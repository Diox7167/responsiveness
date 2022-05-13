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
                  Text(
                    email.sender.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  EmailDeliveryInfo(email: email),
                ],
              ),
              const Divider(),
              ListTile(
                title: EmailBodyPreview(email: email),
                leading: Hero(
                  tag: "senderAvatar_$index",
                  child: SenderAvatar(sender: email.sender),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star_border),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
