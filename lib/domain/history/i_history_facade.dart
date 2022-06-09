import 'package:dartz/dartz.dart';
import 'package:papay/domain/history/history.dart';
import 'package:papay/domain/history/history_failure.dart';

abstract class IHistoryFacade {
  Stream<Either<HistoryFailure, List<History>>> watchAll();
}
