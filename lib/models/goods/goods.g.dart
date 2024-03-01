// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsImpl _$$GoodsImplFromJson(Map<String, dynamic> json) => _$GoodsImpl(
      id: json['id'] as int?,
      barcode: json['barcode'] as String? ?? '',
      description: json['description'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$GoodsImplToJson(_$GoodsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'description': instance.description,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
    };
