/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/Screens/log_in_page.dart';
import 'package:meeting_booking_app/cubit/auth_cubit.dart';
import 'package:meeting_booking_app/home_page.dart';
import 'Screens/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(), // AuthCubit burada sağlanıyor
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => const SignUpPage(),
          "/login": (context) => const LogInPage(),
          "/home": (context) => const HomePage(), 
          "/addMeetingRoom": (context) => const AddMeetingRoom(),
        },
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/Screens/add_meeting_room.dart';
import 'package:meeting_booking_app/Screens/log_in_page.dart';
import 'package:meeting_booking_app/cubit/auth_cubit.dart';
import 'package:meeting_booking_app/home_page.dart';
import 'Screens/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        initialRoute: "/home",
        routes: {
          "/home": (context) => const HomePage(),
          "/login": (context) => const LogInPage(),
          "/signup": (context) => const SignUpPage(),
          "/addMeetingRoom": (context) => const AddMeetingRoom(),
        },
      ),
    );
  }
}
