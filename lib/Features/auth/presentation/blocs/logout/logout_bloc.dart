import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:heka_store/Features/auth/domain/use_cases/logout_use_case.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc({required LogoutUseCase logoutUseCase})
      : _logoutUseCase = logoutUseCase,
        super(const LogoutInitial()) {
    on<LogoutRequested>(_onLogoutRequested);
  }

  final LogoutUseCase _logoutUseCase;

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<LogoutState> emit,
  ) async {
    emit(const LogoutLoading());

    final result = await _logoutUseCase();

    result.when(
      onError: (failure) => emit(LogoutFailure(message: failure.serverMessage??'Logout failed')),
      onSuccess: (_) => emit(const LogoutSuccess()),
    );
  }
}