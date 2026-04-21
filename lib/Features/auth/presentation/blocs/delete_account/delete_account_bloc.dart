import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart'; // add to pubspec if missing
import 'package:equatable/equatable.dart';
import 'package:heka_store/Features/auth/domain/use_cases/delete_account_and_logout/delete_account_use_case.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final DeleteAccountUseCase deleteAccountUseCase;

  DeleteAccountBloc({required this.deleteAccountUseCase})
    : super(const DeleteAccountInitial()) {
    on<DeleteAccountRequested>(
      _onDeleteAccountRequested,
      // droppable() ignores any new events that arrive while one is in progress.
      // This is the correct transformer for a destructive one-shot action.
      transformer: droppable(),
    );
  }

  Future<void> _onDeleteAccountRequested(
    DeleteAccountRequested event,
    Emitter<DeleteAccountState> emit,
  ) async {
    emit(const DeleteAccountLoading());

    final result = await deleteAccountUseCase(password: event.password);

    result.when(
      onError: (error) => emit(DeleteAccountFailure(error: error)),
      onSuccess: (data) => emit(DeleteAccountSuccess(ValidationKey.accountDeleted)),
    );
  }
}