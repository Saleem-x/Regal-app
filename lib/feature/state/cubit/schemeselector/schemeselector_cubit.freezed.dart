// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schemeselector_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchemeselectorState {
  int get idx => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idx) selectScheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idx)? selectScheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idx)? selectScheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectSchemeState value) selectScheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectSchemeState value)? selectScheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectSchemeState value)? selectScheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeselectorStateCopyWith<SchemeselectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeselectorStateCopyWith<$Res> {
  factory $SchemeselectorStateCopyWith(
          SchemeselectorState value, $Res Function(SchemeselectorState) then) =
      _$SchemeselectorStateCopyWithImpl<$Res, SchemeselectorState>;
  @useResult
  $Res call({int idx});
}

/// @nodoc
class _$SchemeselectorStateCopyWithImpl<$Res, $Val extends SchemeselectorState>
    implements $SchemeselectorStateCopyWith<$Res> {
  _$SchemeselectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectSchemeStateImplCopyWith<$Res>
    implements $SchemeselectorStateCopyWith<$Res> {
  factory _$$SelectSchemeStateImplCopyWith(_$SelectSchemeStateImpl value,
          $Res Function(_$SelectSchemeStateImpl) then) =
      __$$SelectSchemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx});
}

/// @nodoc
class __$$SelectSchemeStateImplCopyWithImpl<$Res>
    extends _$SchemeselectorStateCopyWithImpl<$Res, _$SelectSchemeStateImpl>
    implements _$$SelectSchemeStateImplCopyWith<$Res> {
  __$$SelectSchemeStateImplCopyWithImpl(_$SelectSchemeStateImpl _value,
      $Res Function(_$SelectSchemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_$SelectSchemeStateImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectSchemeStateImpl implements SelectSchemeState {
  const _$SelectSchemeStateImpl({required this.idx});

  @override
  final int idx;

  @override
  String toString() {
    return 'SchemeselectorState.selectScheme(idx: $idx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSchemeStateImpl &&
            (identical(other.idx, idx) || other.idx == idx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSchemeStateImplCopyWith<_$SelectSchemeStateImpl> get copyWith =>
      __$$SelectSchemeStateImplCopyWithImpl<_$SelectSchemeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idx) selectScheme,
  }) {
    return selectScheme(idx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idx)? selectScheme,
  }) {
    return selectScheme?.call(idx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idx)? selectScheme,
    required TResult orElse(),
  }) {
    if (selectScheme != null) {
      return selectScheme(idx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectSchemeState value) selectScheme,
  }) {
    return selectScheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectSchemeState value)? selectScheme,
  }) {
    return selectScheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectSchemeState value)? selectScheme,
    required TResult orElse(),
  }) {
    if (selectScheme != null) {
      return selectScheme(this);
    }
    return orElse();
  }
}

abstract class SelectSchemeState implements SchemeselectorState {
  const factory SelectSchemeState({required final int idx}) =
      _$SelectSchemeStateImpl;

  @override
  int get idx;
  @override
  @JsonKey(ignore: true)
  _$$SelectSchemeStateImplCopyWith<_$SelectSchemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
