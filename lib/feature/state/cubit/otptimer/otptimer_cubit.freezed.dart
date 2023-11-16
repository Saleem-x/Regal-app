// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otptimer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtptimerState {
  int get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int time) setotptimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int time)? setotptimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int time)? setotptimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetotpTimerState value) setotptimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetotpTimerState value)? setotptimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetotpTimerState value)? setotptimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtptimerStateCopyWith<OtptimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtptimerStateCopyWith<$Res> {
  factory $OtptimerStateCopyWith(
          OtptimerState value, $Res Function(OtptimerState) then) =
      _$OtptimerStateCopyWithImpl<$Res, OtptimerState>;
  @useResult
  $Res call({int time});
}

/// @nodoc
class _$OtptimerStateCopyWithImpl<$Res, $Val extends OtptimerState>
    implements $OtptimerStateCopyWith<$Res> {
  _$OtptimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetotpTimerStateImplCopyWith<$Res>
    implements $OtptimerStateCopyWith<$Res> {
  factory _$$SetotpTimerStateImplCopyWith(_$SetotpTimerStateImpl value,
          $Res Function(_$SetotpTimerStateImpl) then) =
      __$$SetotpTimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time});
}

/// @nodoc
class __$$SetotpTimerStateImplCopyWithImpl<$Res>
    extends _$OtptimerStateCopyWithImpl<$Res, _$SetotpTimerStateImpl>
    implements _$$SetotpTimerStateImplCopyWith<$Res> {
  __$$SetotpTimerStateImplCopyWithImpl(_$SetotpTimerStateImpl _value,
      $Res Function(_$SetotpTimerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$SetotpTimerStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetotpTimerStateImpl implements SetotpTimerState {
  const _$SetotpTimerStateImpl({required this.time});

  @override
  final int time;

  @override
  String toString() {
    return 'OtptimerState.setotptimer(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetotpTimerStateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetotpTimerStateImplCopyWith<_$SetotpTimerStateImpl> get copyWith =>
      __$$SetotpTimerStateImplCopyWithImpl<_$SetotpTimerStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int time) setotptimer,
  }) {
    return setotptimer(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int time)? setotptimer,
  }) {
    return setotptimer?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int time)? setotptimer,
    required TResult orElse(),
  }) {
    if (setotptimer != null) {
      return setotptimer(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetotpTimerState value) setotptimer,
  }) {
    return setotptimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetotpTimerState value)? setotptimer,
  }) {
    return setotptimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetotpTimerState value)? setotptimer,
    required TResult orElse(),
  }) {
    if (setotptimer != null) {
      return setotptimer(this);
    }
    return orElse();
  }
}

abstract class SetotpTimerState implements OtptimerState {
  const factory SetotpTimerState({required final int time}) =
      _$SetotpTimerStateImpl;

  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$SetotpTimerStateImplCopyWith<_$SetotpTimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
