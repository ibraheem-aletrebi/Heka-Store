part of 'delete_account_bloc.dart';

abstract class DeleteAccountState extends Equatable {
  const DeleteAccountState();

  @override
  List<Object?> get props => [];
}

class DeleteAccountInitial extends DeleteAccountState {
  const DeleteAccountInitial();
}

class DeleteAccountLoading extends DeleteAccountState {
  const DeleteAccountLoading();
}

class DeleteAccountSuccess extends DeleteAccountState {
  final ValidationKey key;
  const DeleteAccountSuccess(this.key);

  @override
  List<Object?> get props => [key];
}

class DeleteAccountFailure extends DeleteAccountState {
  final ApiErrorModel error;

  const DeleteAccountFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
