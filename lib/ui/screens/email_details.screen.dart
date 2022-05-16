import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';
import 'package:responsiveness/ui/widgets/details/email_details_builder.widget.dart';

class EmailDetailsScreen extends StatelessWidget {
  final Email email;
  final int index;
  const EmailDetailsScreen({
    Key? key,
    required this.email,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          email.sender.name,
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
      ),
      body: EmailDetailsBuilderWidget(
        email: email,
      ),
    );
  }
}
