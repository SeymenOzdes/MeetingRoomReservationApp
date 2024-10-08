import 'package:flutter/material.dart';
import 'package:meeting_booking_app/components/custom_textfield.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController mailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş Yap"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              "Giriş Yap",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            CustomTextfield(
                controller: mailFieldController,
                obsecureText: false,
                title: "Mail"),
            CustomTextfield(
                controller: passwordFieldController,
                obsecureText: true,
                title: "Password"),
            ElevatedButton(
              onPressed: null, // _formValidation,
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(180, 70)),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: const Text("Kayıt Ol"),
            ),
          ],
        ),
      ),
    );
  }
}
