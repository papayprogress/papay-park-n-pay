part of 'main_layout_cubit.dart';

@freezed
class MainLayoutState with _$MainLayoutState {
  const factory MainLayoutState(int currentIndex) = _MainLayoutState;

  factory MainLayoutState.initial() => const MainLayoutState(0);
}
