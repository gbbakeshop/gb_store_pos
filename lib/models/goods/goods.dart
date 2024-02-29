// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods.freezed.dart';
part 'goods.g.dart';

@JsonSerializable(explicitToJson: true)
@freezed
class Goods with _$Goods {
  const factory Goods({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'barcode') int? barcode,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'total') int? total,
  }) = _Goods;

  factory Goods.fromJson(Map<String, dynamic> json) => _$GoodsFromJson(json);
}
