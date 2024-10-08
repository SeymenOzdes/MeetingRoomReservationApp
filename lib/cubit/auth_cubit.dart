import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthInitial());

  void validateForm(String name, String email, String password) {
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      emit(const AuthError("Lütfen boş alanları doldurun"));
      print("error");
    } else {
      emit(const AuthValid());
      print("başarılı");
    }
  }
}
