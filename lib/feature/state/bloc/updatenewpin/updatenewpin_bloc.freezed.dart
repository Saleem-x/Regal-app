// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updatenewpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdatenewpinEvent {
  String get pin => throw _privateConstructorUsedError;
  String get cusID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String cusID) updateNewPinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String cusID)? updateNewPinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String cusID)? updateNewPinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(updateNewPinEvent value) updateNewPinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(updateNewPinEvent value)? updateNewPinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(updateNewPinEvent value)? updateNewPinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatenewpinEventCopyWith<UpdatenewpinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatenewpinEventCopyWith<$Res> {
  factory $UpdatenewpinEventCopyWith(
          UpdatenewpinEvent value, $Res Function(UpdatenewpinEvent) then) =
      _$UpdatenewpinEventCopyWithImpl<$Res, UpdatenewpinEvent>;
  @useResult
  $Res call({String pin, String cusID});
}

/// @nodoc
class _$UpdatenewpinEventCopyWithImpl<$Res, $Val extends UpdatenewpinEvent>
    implements $UpdatenewpinEventCopyWith<$Res> {
  _$UpdatenewpinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? cusID = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$updateNewPinEventImplCopyWith<$Res>
    implements $UpdatenewpinEventCopyWith<$Res> {
  factory _$$updateNewPinEventImplCopyWith(_$updateNewPinEventImpl value,
          $Res Function(_$updateNewPinEventImpl) then) =
      __$$updateNewPinEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, String cusID});
}

/// @nodoc
class __$$updateNewPinEventImplCopyWithImpl<$Res>
    extends _$UpdatenewpinEventCopyWithImpl<$Res, _$updateNewPinEventImpl>
    implements _$$updateNewPinEventImplCopyWith<$Res> {
  __$$updateNewPinEventImplCopyWithImpl(_$updateNewPinEventImpl _value,
      $Res Function(_$updateNewPinEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? cusID = null,
  }) {
    return _then(_$updateNewPinEventImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateNewPinEventImpl implements updateNewPinEvent {
  const _$updateNewPinEventImpl({required this.pin, required this.cusID});

  @override
  final String pin;
  @override
  final String cusID;

  @override
  String toString() {
    return 'UpdatenewpinEvent.updateNewPinEvent(pin: $pin, cusID: $cusID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateNewPinEventImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.cusID, cusID) || other.cusID == cusID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, cusID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateNewPinEventImplCopyWith<_$updateNewPinEventImpl> get copyWith =>
      __$$updateNewPinEventImplCopyWithImpl<_$updateNewPinEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String cusID) updateNewPinEvent,
  }) {
    return updateNewPinEvent(pin, cusID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String cusID)? updateNewPinEvent,
  }) {
    return updateNewPinEvent?.call(pin, cusID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String cusID)? updateNewPinEvent,
    required TResult orElse(),
  }) {
    if (updateNewPinEvent != null) {
      return updateNewPinEvent(pin, cusID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(updateNewPinEvent value) updateNewPinEvent,
  }) {
    return updateNewPinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(updateNewPinEvent value)? updateNewPinEvent,
  }) {
    return updateNewPinEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(updateNewPinEvent value)? updateNewPinEvent,
    required TResult orElse(),
  }) {
    if (updateNewPinEvent != null) {
      return updateNewPinEvent(this);
    }
    return orElse();
  }
}

abstract class updateNewPinEvent implements UpdatenewpinEvent {
  const factory updateNewPinEvent(
      {required final String pin,
      required final String cusID}) = _$updateNewPinEventImpl;

  @override
  String get pin;
  @override
  String get cusID;
  @override
  @JsonKey(ignore: true)
  _$$updateNewPinEventImplCopyWith<_$updateNewPinEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdatenewpinState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PinResetOtpModel restmodel) pinResetSuccessState,
    required TResult Function(PinResetOtpModel restmodel) pinResetFailedState,
    required TResult Function() pinresetinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult? Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult? Function()? pinresetinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult Function()? pinresetinitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinResetSuccessState value) pinResetSuccessState,
    required TResult Function(PinResetFailedState value) pinResetFailedState,
    required TResult Function(Pinresetinitial value) pinresetinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult? Function(PinResetFailedState value)? pinResetFailedState,
    TResult? Function(Pinresetinitial value)? pinresetinitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult Function(PinResetFailedState value)? pinResetFailedState,
    TResult Function(Pinresetinitial value)? pinresetinitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatenewpinStateCopyWith<$Res> {
  factory $UpdatenewpinStateCopyWith(
          UpdatenewpinState value, $Res Function(UpdatenewpinState) then) =
      _$UpdatenewpinStateCopyWithImpl<$Res, UpdatenewpinState>;
}

/// @nodoc
class _$UpdatenewpinStateCopyWithImpl<$Res, $Val extends UpdatenewpinState>
    implements $UpdatenewpinStateCopyWith<$Res> {
  _$UpdatenewpinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PinResetSuccessStateImplCopyWith<$Res> {
  factory _$$PinResetSuccessStateImplCopyWith(_$PinResetSuccessStateImpl value,
          $Res Function(_$PinResetSuccessStateImpl) then) =
      __$$PinResetSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PinResetOtpModel restmodel});
}

/// @nodoc
class __$$PinResetSuccessStateImplCopyWithImpl<$Res>
    extends _$UpdatenewpinStateCopyWithImpl<$Res, _$PinResetSuccessStateImpl>
    implements _$$PinResetSuccessStateImplCopyWith<$Res> {
  __$$PinResetSuccessStateImplCopyWithImpl(_$PinResetSuccessStateImpl _value,
      $Res Function(_$PinResetSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restmodel = null,
  }) {
    return _then(_$PinResetSuccessStateImpl(
      restmodel: null == restmodel
          ? _value.restmodel
          : restmodel // ignore: cast_nullable_to_non_nullable
              as PinResetOtpModel,
    ));
  }
}

/// @nodoc

class _$PinResetSuccessStateImpl implements PinResetSuccessState {
  const _$PinResetSuccessStateImpl({required this.restmodel});

  @override
  final PinResetOtpModel restmodel;

  @override
  String toString() {
    return 'UpdatenewpinState.pinResetSuccessState(restmodel: $restmodel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinResetSuccessStateImpl &&
            (identical(other.restmodel, restmodel) ||
                other.restmodel == restmodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restmodel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinResetSuccessStateImplCopyWith<_$PinResetSuccessStateImpl>
      get copyWith =>
          __$$PinResetSuccessStateImplCopyWithImpl<_$PinResetSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PinResetOtpModel restmodel) pinResetSuccessState,
    required TResult Function(PinResetOtpModel restmodel) pinResetFailedState,
    required TResult Function() pinresetinitial,
  }) {
    return pinResetSuccessState(restmodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult? Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult? Function()? pinresetinitial,
  }) {
    return pinResetSuccessState?.call(restmodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult Function()? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinResetSuccessState != null) {
      return pinResetSuccessState(restmodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinResetSuccessState value) pinResetSuccessState,
    required TResult Function(PinResetFailedState value) pinResetFailedState,
    required TResult Function(Pinresetinitial value) pinresetinitial,
  }) {
    return pinResetSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult? Function(PinResetFailedState value)? pinResetFailedState,
    TResult? Function(Pinresetinitial value)? pinresetinitial,
  }) {
    return pinResetSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult Function(PinResetFailedState value)? pinResetFailedState,
    TResult Function(Pinresetinitial value)? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinResetSuccessState != null) {
      return pinResetSuccessState(this);
    }
    return orElse();
  }
}

abstract class PinResetSuccessState implements UpdatenewpinState {
  const factory PinResetSuccessState(
      {required final PinResetOtpModel restmodel}) = _$PinResetSuccessStateImpl;

  PinResetOtpModel get restmodel;
  @JsonKey(ignore: true)
  _$$PinResetSuccessStateImplCopyWith<_$PinResetSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PinResetFailedStateImplCopyWith<$Res> {
  factory _$$PinResetFailedStateImplCopyWith(_$PinResetFailedStateImpl value,
          $Res Function(_$PinResetFailedStateImpl) then) =
      __$$PinResetFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PinResetOtpModel restmodel});
}

/// @nodoc
class __$$PinResetFailedStateImplCopyWithImpl<$Res>
    extends _$UpdatenewpinStateCopyWithImpl<$Res, _$PinResetFailedStateImpl>
    implements _$$PinResetFailedStateImplCopyWith<$Res> {
  __$$PinResetFailedStateImplCopyWithImpl(_$PinResetFailedStateImpl _value,
      $Res Function(_$PinResetFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restmodel = null,
  }) {
    return _then(_$PinResetFailedStateImpl(
      restmodel: null == restmodel
          ? _value.restmodel
          : restmodel // ignore: cast_nullable_to_non_nullable
              as PinResetOtpModel,
    ));
  }
}

/// @nodoc

class _$PinResetFailedStateImpl implements PinResetFailedState {
  const _$PinResetFailedStateImpl({required this.restmodel});

  @override
  final PinResetOtpModel restmodel;

  @override
  String toString() {
    return 'UpdatenewpinState.pinResetFailedState(restmodel: $restmodel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinResetFailedStateImpl &&
            (identical(other.restmodel, restmodel) ||
                other.restmodel == restmodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restmodel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinResetFailedStateImplCopyWith<_$PinResetFailedStateImpl> get copyWith =>
      __$$PinResetFailedStateImplCopyWithImpl<_$PinResetFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PinResetOtpModel restmodel) pinResetSuccessState,
    required TResult Function(PinResetOtpModel restmodel) pinResetFailedState,
    required TResult Function() pinresetinitial,
  }) {
    return pinResetFailedState(restmodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult? Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult? Function()? pinresetinitial,
  }) {
    return pinResetFailedState?.call(restmodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult Function()? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinResetFailedState != null) {
      return pinResetFailedState(restmodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinResetSuccessState value) pinResetSuccessState,
    required TResult Function(PinResetFailedState value) pinResetFailedState,
    required TResult Function(Pinresetinitial value) pinresetinitial,
  }) {
    return pinResetFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult? Function(PinResetFailedState value)? pinResetFailedState,
    TResult? Function(Pinresetinitial value)? pinresetinitial,
  }) {
    return pinResetFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult Function(PinResetFailedState value)? pinResetFailedState,
    TResult Function(Pinresetinitial value)? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinResetFailedState != null) {
      return pinResetFailedState(this);
    }
    return orElse();
  }
}

abstract class PinResetFailedState implements UpdatenewpinState {
  const factory PinResetFailedState(
      {required final PinResetOtpModel restmodel}) = _$PinResetFailedStateImpl;

  PinResetOtpModel get restmodel;
  @JsonKey(ignore: true)
  _$$PinResetFailedStateImplCopyWith<_$PinResetFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PinresetinitialImplCopyWith<$Res> {
  factory _$$PinresetinitialImplCopyWith(_$PinresetinitialImpl value,
          $Res Function(_$PinresetinitialImpl) then) =
      __$$PinresetinitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PinresetinitialImplCopyWithImpl<$Res>
    extends _$UpdatenewpinStateCopyWithImpl<$Res, _$PinresetinitialImpl>
    implements _$$PinresetinitialImplCopyWith<$Res> {
  __$$PinresetinitialImplCopyWithImpl(
      _$PinresetinitialImpl _value, $Res Function(_$PinresetinitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PinresetinitialImpl implements Pinresetinitial {
  const _$PinresetinitialImpl();

  @override
  String toString() {
    return 'UpdatenewpinState.pinresetinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PinresetinitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PinResetOtpModel restmodel) pinResetSuccessState,
    required TResult Function(PinResetOtpModel restmodel) pinResetFailedState,
    required TResult Function() pinresetinitial,
  }) {
    return pinresetinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult? Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult? Function()? pinresetinitial,
  }) {
    return pinresetinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PinResetOtpModel restmodel)? pinResetSuccessState,
    TResult Function(PinResetOtpModel restmodel)? pinResetFailedState,
    TResult Function()? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinresetinitial != null) {
      return pinresetinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinResetSuccessState value) pinResetSuccessState,
    required TResult Function(PinResetFailedState value) pinResetFailedState,
    required TResult Function(Pinresetinitial value) pinresetinitial,
  }) {
    return pinresetinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult? Function(PinResetFailedState value)? pinResetFailedState,
    TResult? Function(Pinresetinitial value)? pinresetinitial,
  }) {
    return pinresetinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinResetSuccessState value)? pinResetSuccessState,
    TResult Function(PinResetFailedState value)? pinResetFailedState,
    TResult Function(Pinresetinitial value)? pinresetinitial,
    required TResult orElse(),
  }) {
    if (pinresetinitial != null) {
      return pinresetinitial(this);
    }
    return orElse();
  }
}

abstract class Pinresetinitial implements UpdatenewpinState {
  const factory Pinresetinitial() = _$PinresetinitialImpl;
}
