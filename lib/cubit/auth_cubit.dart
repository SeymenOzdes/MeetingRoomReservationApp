import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthInitial());

  void validateForm(String name, String email, String password) {
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      emit(const AuthError());
    } else {
      emit(const AuthValid());
    }
  }

  void showErrorAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Hata"),
        content: const Text("Lütfen boş alanları doldurunuz"),
        actions: [
          TextButton(
            onPressed: () => {
              Navigator.of(context).pop(),
              emit(const AuthInitial()),
            },
            child: const Center(
              child: Text("tamam"),
            ),
          )
        ],
      ),
    );
  }
}
