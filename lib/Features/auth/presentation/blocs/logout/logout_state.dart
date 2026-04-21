part of 'logout_bloc.dart';

abstract class LogoutState extends Equatable {
  const LogoutState();

  @override
  List<Object?> get props => [];
}

/// Initial / idle state — nothing happening.
class LogoutInitial extends LogoutState {
  const LogoutInitial();
}

/// Logout is in progress (show loading indicator if needed).
class LogoutLoading extends LogoutState {
  const LogoutLoading();
}

/// Logout completed successfully — navigate to login.
class LogoutSuccess extends LogoutState {
  const LogoutSuccess();
}

/// Something went wrong during logout.
class LogoutFailure extends LogoutState {
  const LogoutFailure({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}