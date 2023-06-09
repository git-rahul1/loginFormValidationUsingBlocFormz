// part of 'login_bloc.dart';
//
// @immutable
// abstract class LoginState {}
//
// class LoginInitial extends LoginState {}
part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.failure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  final FormzSubmissionStatus status;
  final Username username;
  final Password password;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, username, password];
}