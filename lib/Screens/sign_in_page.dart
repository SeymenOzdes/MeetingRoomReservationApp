import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/custom_textfield.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController nameFieldController = TextEditingController();
  final TextEditingController mailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();

  void _formValidation() {
    if (nameFieldController.text.isEmpty ||
        mailFieldController.text.isEmpty ||
        passwordFieldController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Hata"),
          content: const Text("Lütfen boş alanları doldurun"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Tamam"),
            ),
          ],
        ),
      );
    } else {
      Navigator.pushNamed(context, '/logInRoute');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              "Kayıt Ol",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            CustomTextfield(
              controller: nameFieldController,
              obsecureText: false,
              title: "isim",
            ),
            CustomTextfield(
              controller: mailFieldController,
              obsecureText: false,
              title: "Mail",
            ),
            CustomTextfield(
              controller: passwordFieldController,
              obsecureText: true,
              title: "Şifre",
            ),
            const SizedBox(height: 140),
            ElevatedButton(
              onPressed: _formValidation,
              child: const Text("Kayıt Ol"),
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(150, 50)),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameFieldController.dispose();
    mailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }
}
