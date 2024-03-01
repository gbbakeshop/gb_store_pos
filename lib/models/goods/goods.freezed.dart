// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Goods _$GoodsFromJson(Map<String, dynamic> json) {
  return _Goods.fromJson(json);
}

/// @nodoc
mixin _$Goods {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'barcode')
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsCopyWith<Goods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsCopyWith<$Res> {
  factory $GoodsCopyWith(Goods value, $Res Function(Goods) then) =
      _$GoodsCopyWithImpl<$Res, Goods>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'barcode') String barcode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class _$GoodsCopyWithImpl<$Res, $Val extends Goods>
    implements $GoodsCopyWith<$Res> {
  _$GoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = null,
    Object? description = freezed,
    Object? quantity = null,
    Object? price = null,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsImplCopyWith<$Res> implements $GoodsCopyWith<$Res> {
  factory _$$GoodsImplCopyWith(
          _$GoodsImpl value, $Res Function(_$GoodsImpl) then) =
      __$$GoodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'barcode') String barcode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'total') int? total});
}

/// @nodoc
class __$$GoodsImplCopyWithImpl<$Res>
    extends _$GoodsCopyWithImpl<$Res, _$GoodsImpl>
    implements _$$GoodsImplCopyWith<$Res> {
  __$$GoodsImplCopyWithImpl(
      _$GoodsImpl _value, $Res Function(_$GoodsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = null,
    Object? description = freezed,
    Object? quantity = null,
    Object? price = null,
    Object? total = freezed,
  }) {
    return _then(_$GoodsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsImpl implements _Goods {
  const _$GoodsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'barcode') this.barcode = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'total') this.total});

  factory _$GoodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'barcode')
  final String barcode;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'total')
  final int? total;

  @override
  String toString() {
    return 'Goods(id: $id, barcode: $barcode, description: $description, quantity: $quantity, price: $price, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, barcode, description, quantity, price, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsImplCopyWith<_$GoodsImpl> get copyWith =>
      __$$GoodsImplCopyWithImpl<_$GoodsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsImplToJson(
      this,
    );
  }
}

abstract class _Goods implements Goods {
  const factory _Goods(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'barcode') final String barcode,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'quantity') final int quantity,
      @JsonKey(name: 'price') final double price,
      @JsonKey(name: 'total') final int? total}) = _$GoodsImpl;

  factory _Goods.fromJson(Map<String, dynamic> json) = _$GoodsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'barcode')
  String get barcode;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$GoodsImplCopyWith<_$GoodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
