// core/blocs/session/session_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_local_data_source.dart';

enum SessionStatus { guest, authenticated }

class SessionCubit extends Cubit<SessionStatus> {
  final AuthLocalDataSource _localDataSource;

  SessionCubit({required AuthLocalDataSource localDataSource})
      : _localDataSource = localDataSource,
        super(SessionStatus.guest);

  Future<void> checkSession() async {
    final isLoggedIn = await _localDataSource.isLoggedIn();
    emit(isLoggedIn ? SessionStatus.authenticated : SessionStatus.guest);
  }

  void login() => emit(SessionStatus.authenticated);
  void logout() => emit(SessionStatus.guest);

  bool get isGuest => state == SessionStatus.guest;
  bool get isAuthenticated => state == SessionStatus.authenticated;
}