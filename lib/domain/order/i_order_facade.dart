import 'package:dartz/dartz.dart';
import 'package:papay/domain/history/history.dart';
import 'package:papay/domain/order/order_failure.dart';

abstract class IOrderFacade {
  Future<Either<OrderFailure, Unit>> create(History data);
  Future<Either<OrderFailure, Unit>> update(History data);
}
