// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goldrate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoldrateEvent {
  String get datakey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey) getgoldRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey)? getgoldRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey)? getgoldRate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetgoldRateEvent value) getgoldRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetgoldRateEvent value)? getgoldRate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetgoldRateEvent value)? getgoldRate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoldrateEventCopyWith<GoldrateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldrateEventCopyWith<$Res> {
  factory $GoldrateEventCopyWith(
          GoldrateEvent value, $Res Function(GoldrateEvent) then) =
      _$GoldrateEventCopyWithImpl<$Res, GoldrateEvent>;
  @useResult
  $Res call({String datakey});
}

/// @nodoc
class _$GoldrateEventCopyWithImpl<$Res, $Val extends GoldrateEvent>
    implements $GoldrateEventCopyWith<$Res> {
  _$GoldrateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
  }) {
    return _then(_value.copyWith(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetgoldRateEventImplCopyWith<$Res>
    implements $GoldrateEventCopyWith<$Res> {
  factory _$$GetgoldRateEventImplCopyWith(_$GetgoldRateEventImpl value,
          $Res Function(_$GetgoldRateEventImpl) then) =
      __$$GetgoldRateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datakey});
}

/// @nodoc
class __$$GetgoldRateEventImplCopyWithImpl<$Res>
    extends _$GoldrateEventCopyWithImpl<$Res, _$GetgoldRateEventImpl>
    implements _$$GetgoldRateEventImplCopyWith<$Res> {
  __$$GetgoldRateEventImplCopyWithImpl(_$GetgoldRateEventImpl _value,
      $Res Function(_$GetgoldRateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
  }) {
    return _then(_$GetgoldRateEventImpl(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetgoldRateEventImpl implements GetgoldRateEvent {
  const _$GetgoldRateEventImpl({required this.datakey});

  @override
  final String datakey;

  @override
  String toString() {
    return 'GoldrateEvent.getgoldRate(datakey: $datakey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetgoldRateEventImpl &&
            (identical(other.datakey, datakey) || other.datakey == datakey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datakey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetgoldRateEventImplCopyWith<_$GetgoldRateEventImpl> get copyWith =>
      __$$GetgoldRateEventImplCopyWithImpl<_$GetgoldRateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey) getgoldRate,
  }) {
    return getgoldRate(datakey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey)? getgoldRate,
  }) {
    return getgoldRate?.call(datakey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey)? getgoldRate,
    required TResult orElse(),
  }) {
    if (getgoldRate != null) {
      return getgoldRate(datakey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetgoldRateEvent value) getgoldRate,
  }) {
    return getgoldRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetgoldRateEvent value)? getgoldRate,
  }) {
    return getgoldRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetgoldRateEvent value)? getgoldRate,
    required TResult orElse(),
  }) {
    if (getgoldRate != null) {
      return getgoldRate(this);
    }
    return orElse();
  }
}

abstract class GetgoldRateEvent implements GoldrateEvent {
  const factory GetgoldRateEvent({required final String datakey}) =
      _$GetgoldRateEventImpl;

  @override
  String get datakey;
  @override
  @JsonKey(ignore: true)
  _$$GetgoldRateEventImplCopyWith<_$GetgoldRateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoldrateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoldRateModel? goldrate) goldratestate,
    required TResult Function() failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GoldRateModel? goldrate)? goldratestate,
    TResult? Function()? failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoldRateModel? goldrate)? goldratestate,
    TResult Function()? failedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Goldratestate value) goldratestate,
    required TResult Function(FailedState value) failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Goldratestate value)? goldratestate,
    TResult? Function(FailedState value)? failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Goldratestate value)? goldratestate,
    TResult Function(FailedState value)? failedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldrateStateCopyWith<$Res> {
  factory $GoldrateStateCopyWith(
          GoldrateState value, $Res Function(GoldrateState) then) =
      _$GoldrateStateCopyWithImpl<$Res, GoldrateState>;
}

/// @nodoc
class _$GoldrateStateCopyWithImpl<$Res, $Val extends GoldrateState>
    implements $GoldrateStateCopyWith<$Res> {
  _$GoldrateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoldratestateImplCopyWith<$Res> {
  factory _$$GoldratestateImplCopyWith(
          _$GoldratestateImpl value, $Res Function(_$GoldratestateImpl) then) =
      __$$GoldratestateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoldRateModel? goldrate});
}

/// @nodoc
class __$$GoldratestateImplCopyWithImpl<$Res>
    extends _$GoldrateStateCopyWithImpl<$Res, _$GoldratestateImpl>
    implements _$$GoldratestateImplCopyWith<$Res> {
  __$$GoldratestateImplCopyWithImpl(
      _$GoldratestateImpl _value, $Res Function(_$GoldratestateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldrate = freezed,
  }) {
    return _then(_$GoldratestateImpl(
      goldrate: freezed == goldrate
          ? _value.goldrate
          : goldrate // ignore: cast_nullable_to_non_nullable
              as GoldRateModel?,
    ));
  }
}

/// @nodoc

class _$GoldratestateImpl implements Goldratestate {
  const _$GoldratestateImpl({required this.goldrate});

  @override
  final GoldRateModel? goldrate;

  @override
  String toString() {
    return 'GoldrateState.goldratestate(goldrate: $goldrate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoldratestateImpl &&
            (identical(other.goldrate, goldrate) ||
                other.goldrate == goldrate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goldrate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoldratestateImplCopyWith<_$GoldratestateImpl> get copyWith =>
      __$$GoldratestateImplCopyWithImpl<_$GoldratestateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoldRateModel? goldrate) goldratestate,
    required TResult Function() failedState,
  }) {
    return goldratestate(goldrate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GoldRateModel? goldrate)? goldratestate,
    TResult? Function()? failedState,
  }) {
    return goldratestate?.call(goldrate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoldRateModel? goldrate)? goldratestate,
    TResult Function()? failedState,
    required TResult orElse(),
  }) {
    if (goldratestate != null) {
      return goldratestate(goldrate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Goldratestate value) goldratestate,
    required TResult Function(FailedState value) failedState,
  }) {
    return goldratestate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Goldratestate value)? goldratestate,
    TResult? Function(FailedState value)? failedState,
  }) {
    return goldratestate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Goldratestate value)? goldratestate,
    TResult Function(FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (goldratestate != null) {
      return goldratestate(this);
    }
    return orElse();
  }
}

abstract class Goldratestate implements GoldrateState {
  const factory Goldratestate({required final GoldRateModel? goldrate}) =
      _$GoldratestateImpl;

  GoldRateModel? get goldrate;
  @JsonKey(ignore: true)
  _$$GoldratestateImplCopyWith<_$GoldratestateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedStateImplCopyWith<$Res> {
  factory _$$FailedStateImplCopyWith(
          _$FailedStateImpl value, $Res Function(_$FailedStateImpl) then) =
      __$$FailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedStateImplCopyWithImpl<$Res>
    extends _$GoldrateStateCopyWithImpl<$Res, _$FailedStateImpl>
    implements _$$FailedStateImplCopyWith<$Res> {
  __$$FailedStateImplCopyWithImpl(
      _$FailedStateImpl _value, $Res Function(_$FailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedStateImpl implements FailedState {
  const _$FailedStateImpl();

  @override
  String toString() {
    return 'GoldrateState.failedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GoldRateModel? goldrate) goldratestate,
    required TResult Function() failedState,
  }) {
    return failedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GoldRateModel? goldrate)? goldratestate,
    TResult? Function()? failedState,
  }) {
    return failedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GoldRateModel? goldrate)? goldratestate,
    TResult Function()? failedState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Goldratestate value) goldratestate,
    required TResult Function(FailedState value) failedState,
  }) {
    return failedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Goldratestate value)? goldratestate,
    TResult? Function(FailedState value)? failedState,
  }) {
    return failedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Goldratestate value)? goldratestate,
    TResult Function(FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState(this);
    }
    return orElse();
  }
}

abstract class FailedState implements GoldrateState {
  const factory FailedState() = _$FailedStateImpl;
}
