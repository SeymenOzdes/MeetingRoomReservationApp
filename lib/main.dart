import 'package:flutter/material.dart';
import 'package:meeting_booking_app/Screens/log_in_page.dart';
import 'Screens/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SignInPage(),
        '/logInRoute': (context) => const LogInPage()
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(),
                body: const Center(
                  child: Text("Bir şeyler ters gitti"),
                ),
              )),
    );
  }
}
