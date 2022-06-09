part of 'order_cubit.dart';

enum Status { isChoosing, isPaying, isSuccess }

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required final Status status,
    final Location? location,
    final ParkingPoint? selectedSpot,
    required final int selectedTime,
    final String? referralCode,
    required final int selectedPayment,
    required final int availableSpot,
  }) = _OrderState;

  factory OrderState.initial() => const OrderState(
        status: Status.isChoosing,
        selectedTime: -1,
        selectedPayment: -1,
        availableSpot: 0,
      );

  const OrderState._();

  bool get canOrder => selectedSpot == null;
}
