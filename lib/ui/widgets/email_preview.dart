import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';

class EmailBodyPreview extends StatelessWidget {
  const EmailBodyPreview({
    Key? key,
    required this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Text(
      email.subject,
      style: const TextStyle(fontSize: 14),
      overflow: TextOverflow.ellipsis,
    );
  }
}
