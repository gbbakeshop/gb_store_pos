// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosState {
  String? get searchInput =>
      throw _privateConstructorUsedError; // Goods? goods,
  List<Goods> get goods => throw _privateConstructorUsedError;
  RequestStatus get requestStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosStateCopyWith<PosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosStateCopyWith<$Res> {
  factory $PosStateCopyWith(PosState value, $Res Function(PosState) then) =
      _$PosStateCopyWithImpl<$Res, PosState>;
  @useResult
  $Res call(
      {String? searchInput, List<Goods> goods, RequestStatus requestStatus});
}

/// @nodoc
class _$PosStateCopyWithImpl<$Res, $Val extends PosState>
    implements $PosStateCopyWith<$Res> {
  _$PosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchInput = freezed,
    Object? goods = null,
    Object? requestStatus = null,
  }) {
    return _then(_value.copyWith(
      searchInput: freezed == searchInput
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as String?,
      goods: null == goods
          ? _value.goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosStateImplCopyWith<$Res>
    implements $PosStateCopyWith<$Res> {
  factory _$$PosStateImplCopyWith(
          _$PosStateImpl value, $Res Function(_$PosStateImpl) then) =
      __$$PosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchInput, List<Goods> goods, RequestStatus requestStatus});
}

/// @nodoc
class __$$PosStateImplCopyWithImpl<$Res>
    extends _$PosStateCopyWithImpl<$Res, _$PosStateImpl>
    implements _$$PosStateImplCopyWith<$Res> {
  __$$PosStateImplCopyWithImpl(
      _$PosStateImpl _value, $Res Function(_$PosStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchInput = freezed,
    Object? goods = null,
    Object? requestStatus = null,
  }) {
    return _then(_$PosStateImpl(
      searchInput: freezed == searchInput
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as String?,
      goods: null == goods
          ? _value._goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc

class _$PosStateImpl implements _PosState {
  const _$PosStateImpl(
      {this.searchInput = '',
      final List<Goods> goods = const [],
      this.requestStatus = RequestStatus.waiting})
      : _goods = goods;

  @override
  @JsonKey()
  final String? searchInput;
// Goods? goods,
  final List<Goods> _goods;
// Goods? goods,
  @override
  @JsonKey()
  List<Goods> get goods {
    if (_goods is EqualUnmodifiableListView) return _goods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goods);
  }

  @override
  @JsonKey()
  final RequestStatus requestStatus;

  @override
  String toString() {
    return 'PosState(searchInput: $searchInput, goods: $goods, requestStatus: $requestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosStateImpl &&
            (identical(other.searchInput, searchInput) ||
                other.searchInput == searchInput) &&
            const DeepCollectionEquality().equals(other._goods, _goods) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchInput,
      const DeepCollectionEquality().hash(_goods), requestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosStateImplCopyWith<_$PosStateImpl> get copyWith =>
      __$$PosStateImplCopyWithImpl<_$PosStateImpl>(this, _$identity);
}

abstract class _PosState implements PosState {
  const factory _PosState(
      {final String? searchInput,
      final List<Goods> goods,
      final RequestStatus requestStatus}) = _$PosStateImpl;

  @override
  String? get searchInput;
  @override // Goods? goods,
  List<Goods> get goods;
  @override
  RequestStatus get requestStatus;
  @override
  @JsonKey(ignore: true)
  _$$PosStateImplCopyWith<_$PosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
