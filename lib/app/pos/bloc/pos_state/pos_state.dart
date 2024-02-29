// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gb_pos_store/models/models.dart';
part 'pos_state.freezed.dart';

@freezed
class PosState with _$PosState {
  const factory PosState({
    @Default('') String? searchInput,
    Goods? goods,
  }) = _PosState;
}
