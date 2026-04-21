part of 'logout_bloc.dart';

abstract class LogoutEvent extends Equatable {
  const LogoutEvent();

  @override
  List<Object?> get props => [];
}

/// Fired when the user confirms logout from the dialog.
class LogoutRequested extends LogoutEvent {
  const LogoutRequested();
}