import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

final List<String> dummySpot = [
  for (int i = 1; i <= 16; i++) "A$i",
];

@injectable
class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderState.initial());

  void selectLocation(int value) {
    emit(state.copyWith(idLocation: value));
  }

  void selectSpot(int value) {
    emit(state.copyWith(
      selectedSpot: state.selectedSpot == value ? -1 : value,
    ));
  }

  void minTime() {
    if (state.selectedTime > 1) {
      emit(state.copyWith(
        selectedTime: state.selectedTime - 1,
      ));
    }
  }

  void plusTime() {
    emit(state.copyWith(
      selectedTime: state.selectedTime + 1,
    ));
  }

  void changeReferral(String value) {
    emit(state.copyWith(
      referralCode: value,
    ));
  }

  void changePage(Status page) {
    emit(state.copyWith(status: page));
  }
}
