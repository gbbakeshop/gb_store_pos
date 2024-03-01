// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods.freezed.dart';
part 'goods.g.dart';

@freezed
class Goods with _$Goods {
  const factory Goods({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'barcode') @Default('') final String barcode,
    @JsonKey(name: 'description') @Default('') final String? description,
    @JsonKey(name: 'quantity') @Default(0) final int quantity,
    @JsonKey(name: 'price') @Default(0) final double price,
    @JsonKey(name: 'total') int? total,
  }) = _Goods;

  factory Goods.fromJson(Map<String, dynamic> json) => _$GoodsFromJson(json);
}
