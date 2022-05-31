import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_layout_state.dart';
part 'main_layout_cubit.freezed.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutState.initial());

  bool isSelected(int index) => state.currentIndex == index;

  void changePage(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
