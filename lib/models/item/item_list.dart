// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_list.freezed.dart';
part 'item_list.g.dart';

@freezed
class ItemList with _$ItemList {
  const factory ItemList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'barcode') int? barcode,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'total') int? total,
  }) = _ItemList;

  factory ItemList.fromJson(Map<String, dynamic> json) =>
      _$$_ItemListFromJson(json);
}
