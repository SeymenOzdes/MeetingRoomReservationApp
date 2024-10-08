import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/Screens/log_in_page.dart';
import 'package:meeting_booking_app/cubit/auth_cubit.dart';
import 'Screens/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpPage(), // AuthCubit burada sağlanıyor
      ),
    );
  }
}
