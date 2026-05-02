import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/models/review_request_model.dart';
import 'package:heka_store/Features/order/data/repo/order_repository.dart';

part 'add_review_state.dart';

class AddReviewCubit extends Cubit<AddReviewState> {
  AddReviewCubit(this.repo) : super(const AddReviewState());
  final OrderRepository repo;
  Future<void> submitReview({required ReviewRequestModel review}) async {
    emit(state.copyWith(status: AddReviewStatus.loading));

    final result = await repo.submitReview(review: review);

    result.when(
      onSuccess: (_) {},
      onError: (e) {
        emit(
          state.copyWith(
            status: AddReviewStatus.failure,
            errorMessage: e.serverMessage,
          ),
        );
      },
    );
  }

  void reset() => emit(const AddReviewState());
}
