part of 'add_review_cubit.dart';

enum AddReviewStatus { initial, loading, success, failure }

class AddReviewState {
  final AddReviewStatus status;
  final String? errorMessage;

  const AddReviewState({
    this.status = AddReviewStatus.initial,
    this.errorMessage,
  });

  bool get isLoading => status == AddReviewStatus.loading;
  bool get isSuccess => status == AddReviewStatus.success;
  bool get isFailure => status == AddReviewStatus.failure;

  AddReviewState copyWith({
    AddReviewStatus? status,
    String? errorMessage,
  }) =>
      AddReviewState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}