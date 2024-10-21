import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/components/custom_textfield.dart';
import 'package:meeting_booking_app/cubit/auth_cubit.dart';
import 'package:meeting_booking_app/cubit/auth_state.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController mailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();
  final TextEditingController mockNameFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();

    mockNameFieldController.text = "emptyString";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              context.read<AuthCubit>().showErrorAlert(context);
            } else if (state is AuthValid) {
              Navigator.pushNamed(context, '/home');
            }
          },
          child: Center(
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
                  onPressed: () {
                    context.read<AuthCubit>().validateForm(
                        mockNameFieldController.text,
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
        ));
  }

  @override
  void dispose() {
    mailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }
}
