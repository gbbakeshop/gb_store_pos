// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pos_state.freezed.dart';

@freezed
class PosState with _$PosState {
  const factory PosState({
    @Default(null) String? searchInput,
  }) = _PosState;
}
