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
mixin _$SearchManagerState {
  Map<AlgoliaFilterType, Set<AlgoliaFilter>> get filters =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchManagerStateCopyWith<SearchManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchManagerStateCopyWith<$Res> {
  factory $SearchManagerStateCopyWith(
          SearchManagerState value, $Res Function(SearchManagerState) then) =
      _$SearchManagerStateCopyWithImpl<$Res, SearchManagerState>;
  @useResult
  $Res call({Map<AlgoliaFilterType, Set<AlgoliaFilter>> filters});
}

/// @nodoc
class _$SearchManagerStateCopyWithImpl<$Res, $Val extends SearchManagerState>
    implements $SearchManagerStateCopyWith<$Res> {
  _$SearchManagerStateCopyWithImpl(this._value, this._then);

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
              as Map<AlgoliaFilterType, Set<AlgoliaFilter>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchManagerStateImplCopyWith<$Res>
    implements $SearchManagerStateCopyWith<$Res> {
  factory _$$SearchManagerStateImplCopyWith(_$SearchManagerStateImpl value,
          $Res Function(_$SearchManagerStateImpl) then) =
      __$$SearchManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<AlgoliaFilterType, Set<AlgoliaFilter>> filters});
}

/// @nodoc
class __$$SearchManagerStateImplCopyWithImpl<$Res>
    extends _$SearchManagerStateCopyWithImpl<$Res, _$SearchManagerStateImpl>
    implements _$$SearchManagerStateImplCopyWith<$Res> {
  __$$SearchManagerStateImplCopyWithImpl(_$SearchManagerStateImpl _value,
      $Res Function(_$SearchManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$SearchManagerStateImpl(
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<AlgoliaFilterType, Set<AlgoliaFilter>>,
    ));
  }
}

/// @nodoc

class _$SearchManagerStateImpl extends _SearchManagerState {
  const _$SearchManagerStateImpl(
      {final Map<AlgoliaFilterType, Set<AlgoliaFilter>> filters = const {}})
      : _filters = filters,
        super._();

  final Map<AlgoliaFilterType, Set<AlgoliaFilter>> _filters;
  @override
  @JsonKey()
  Map<AlgoliaFilterType, Set<AlgoliaFilter>> get filters {
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  @override
  String toString() {
    return 'SearchManagerState(filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchManagerStateImpl &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchManagerStateImplCopyWith<_$SearchManagerStateImpl> get copyWith =>
      __$$SearchManagerStateImplCopyWithImpl<_$SearchManagerStateImpl>(
          this, _$identity);
}

abstract class _SearchManagerState extends SearchManagerState {
  const factory _SearchManagerState(
          {final Map<AlgoliaFilterType, Set<AlgoliaFilter>> filters}) =
      _$SearchManagerStateImpl;
  const _SearchManagerState._() : super._();

  @override
  Map<AlgoliaFilterType, Set<AlgoliaFilter>> get filters;
  @override
  @JsonKey(ignore: true)
  _$$SearchManagerStateImplCopyWith<_$SearchManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
