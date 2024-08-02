// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchFilterManagerState {
  String get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilterManagerStateCopyWith<SearchFilterManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterManagerStateCopyWith<$Res> {
  factory $SearchFilterManagerStateCopyWith(SearchFilterManagerState value,
          $Res Function(SearchFilterManagerState) then) =
      _$SearchFilterManagerStateCopyWithImpl<$Res, SearchFilterManagerState>;
  @useResult
  $Res call({String filters});
}

/// @nodoc
class _$SearchFilterManagerStateCopyWithImpl<$Res,
        $Val extends SearchFilterManagerState>
    implements $SearchFilterManagerStateCopyWith<$Res> {
  _$SearchFilterManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFilterManagerStateImplCopyWith<$Res>
    implements $SearchFilterManagerStateCopyWith<$Res> {
  factory _$$SearchFilterManagerStateImplCopyWith(
          _$SearchFilterManagerStateImpl value,
          $Res Function(_$SearchFilterManagerStateImpl) then) =
      __$$SearchFilterManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filters});
}

/// @nodoc
class __$$SearchFilterManagerStateImplCopyWithImpl<$Res>
    extends _$SearchFilterManagerStateCopyWithImpl<$Res,
        _$SearchFilterManagerStateImpl>
    implements _$$SearchFilterManagerStateImplCopyWith<$Res> {
  __$$SearchFilterManagerStateImplCopyWithImpl(
      _$SearchFilterManagerStateImpl _value,
      $Res Function(_$SearchFilterManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$SearchFilterManagerStateImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFilterManagerStateImpl extends _SearchFilterManagerState {
  const _$SearchFilterManagerStateImpl({this.filters = ''}) : super._();

  @override
  @JsonKey()
  final String filters;

  @override
  String toString() {
    return 'SearchFilterManagerState(filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFilterManagerStateImpl &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFilterManagerStateImplCopyWith<_$SearchFilterManagerStateImpl>
      get copyWith => __$$SearchFilterManagerStateImplCopyWithImpl<
          _$SearchFilterManagerStateImpl>(this, _$identity);
}

abstract class _SearchFilterManagerState extends SearchFilterManagerState {
  const factory _SearchFilterManagerState({final String filters}) =
      _$SearchFilterManagerStateImpl;
  const _SearchFilterManagerState._() : super._();

  @override
  String get filters;
  @override
  @JsonKey(ignore: true)
  _$$SearchFilterManagerStateImplCopyWith<_$SearchFilterManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
