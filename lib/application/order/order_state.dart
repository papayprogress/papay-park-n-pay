part of 'order_cubit.dart';

enum Status { isChoosing, isPaying, isSuccess }

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required final Status status,
    required final int idLocation,
    required final int selectedSpot,
    required final int selectedTime,
    final String? referralCode,
    required final int selectedPayment,
  }) = _OrderState;

  factory OrderState.initial() => const OrderState(
        status: Status.isChoosing,
        idLocation: -1,
        selectedSpot: -1,
        selectedTime: -1,
        selectedPayment: -1,
      );

  const OrderState._();

  bool get canOrder => selectedSpot == -1;
  String get spot => canOrder ? 'None' : dummySpot[selectedSpot];
}
