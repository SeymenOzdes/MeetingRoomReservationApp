import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/Screens/log_in_page.dart';
import 'package:meeting_booking_app/cubit/auth_cubit.dart';
import 'package:meeting_booking_app/cubit/auth_state.dart';
import '../components/custom_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameFieldController = TextEditingController();
  final TextEditingController mailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();

  /* void _formValidation() {
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
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Hata"),
                content: const Text("Lütfen boş alanları doldurunuz"),
                actions: [
                  TextButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: const Center(child: Text("tamam")))
                ],
              ),
            );
          } else if (state is AuthValid) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LogInPage()));
            // Navigator.pushNamed(context, '/logInRoute');
          }
        },
        child: Center(
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
                onPressed: () {
                  context.read<AuthCubit>().validateForm(
                      nameFieldController.text,
                      mailFieldController.text,
                      passwordFieldController.text);
                },
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
