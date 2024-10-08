// import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthLoaded extends AuthState {
  const AuthLoaded();
}

class AuthValid extends AuthState {
  const AuthValid();
}

class AuthError extends AuthState {
  final String errorMessage;

  const AuthError(this.errorMessage);
}