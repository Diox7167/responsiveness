import 'package:flutter/material.dart';
import 'package:responsiveness/models/email.dart';
import 'package:responsiveness/theme/theme.dart';
import 'package:responsiveness/ui/screens/email_list.screen.dart';
import 'package:responsiveness/ui/widgets/details/email_details_builder.widget.dart';
import 'package:responsiveness/ui/widgets/list/email_list_builder.widget.dart';
import 'package:responsiveness/utils/extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsiveness',
      theme: lightTheme,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Email? _selectedEmail;

  @override
  Widget build(BuildContext context) {
    return context.isSmallScreen
        ? const EmailListScreen()
        : Scaffold(
            appBar: AppBar(
              title: const Text("Responsiveness App"),
            ),
            body: Row(
              children: [
                Expanded(
                  child: EmailListBuilderWidget(
                    selectedEmail: (selectedEmail) {
                      setState(() {
                        _selectedEmail = selectedEmail;
                      });
                    },
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 1,
                ),
                Expanded(
                    flex: 3,
                    child: _selectedEmail == null
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Icon(
                                  Icons.mail_outline,
                                  color: Colors.lightBlue,
                                  size: 64,
                                ),
                                Text(
                                    'Please select an email from the list on your left'),
                              ],
                            ),
                          )
                        : EmailDetailsBuilderWidget(email: _selectedEmail!))
              ],
            ),
          );
  }
}
