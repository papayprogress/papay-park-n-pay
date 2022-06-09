import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:papay/domain/location/location.dart';
import 'package:papay/domain/parking_point/parking_point.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

@injectable
class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderState.initial());

  void selectLocation(Location value) {
    emit(state.copyWith(location: value));
  }

  void selectSpot(ParkingPoint value) {
    emit(state.copyWith(
      selectedSpot: state.selectedSpot?.id == value.id ? null : value,
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
