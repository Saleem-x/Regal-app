// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetpinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNO) sendOtp,
    required TResult Function(String mobileNO, String otp) verfiOtpEvent,
    required TResult Function() otptimerStateEvent,
    required TResult Function() otpscreenresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNO)? sendOtp,
    TResult? Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult? Function()? otptimerStateEvent,
    TResult? Function()? otpscreenresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNO)? sendOtp,
    TResult Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult Function()? otptimerStateEvent,
    TResult Function()? otpscreenresetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerfiOtpEvent value) verfiOtpEvent,
    required TResult Function(OtptimerStateEvent value) otptimerStateEvent,
    required TResult Function(OtpscreenresetEvent value) otpscreenresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult? Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult? Function(OtpscreenresetEvent value)? otpscreenresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult Function(OtpscreenresetEvent value)? otpscreenresetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetpinEventCopyWith<$Res> {
  factory $ResetpinEventCopyWith(
          ResetpinEvent value, $Res Function(ResetpinEvent) then) =
      _$ResetpinEventCopyWithImpl<$Res, ResetpinEvent>;
}

/// @nodoc
class _$ResetpinEventCopyWithImpl<$Res, $Val extends ResetpinEvent>
    implements $ResetpinEventCopyWith<$Res> {
  _$ResetpinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpEventImplCopyWith<$Res> {
  factory _$$SendOtpEventImplCopyWith(
          _$SendOtpEventImpl value, $Res Function(_$SendOtpEventImpl) then) =
      __$$SendOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNO});
}

/// @nodoc
class __$$SendOtpEventImplCopyWithImpl<$Res>
    extends _$ResetpinEventCopyWithImpl<$Res, _$SendOtpEventImpl>
    implements _$$SendOtpEventImplCopyWith<$Res> {
  __$$SendOtpEventImplCopyWithImpl(
      _$SendOtpEventImpl _value, $Res Function(_$SendOtpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNO = null,
  }) {
    return _then(_$SendOtpEventImpl(
      mobileNO: null == mobileNO
          ? _value.mobileNO
          : mobileNO // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpEventImpl implements SendOtpEvent {
  const _$SendOtpEventImpl({required this.mobileNO});

  @override
  final String mobileNO;

  @override
  String toString() {
    return 'ResetpinEvent.sendOtp(mobileNO: $mobileNO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEventImpl &&
            (identical(other.mobileNO, mobileNO) ||
                other.mobileNO == mobileNO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      __$$SendOtpEventImplCopyWithImpl<_$SendOtpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNO) sendOtp,
    required TResult Function(String mobileNO, String otp) verfiOtpEvent,
    required TResult Function() otptimerStateEvent,
    required TResult Function() otpscreenresetEvent,
  }) {
    return sendOtp(mobileNO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNO)? sendOtp,
    TResult? Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult? Function()? otptimerStateEvent,
    TResult? Function()? otpscreenresetEvent,
  }) {
    return sendOtp?.call(mobileNO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNO)? sendOtp,
    TResult Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult Function()? otptimerStateEvent,
    TResult Function()? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(mobileNO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerfiOtpEvent value) verfiOtpEvent,
    required TResult Function(OtptimerStateEvent value) otptimerStateEvent,
    required TResult Function(OtpscreenresetEvent value) otpscreenresetEvent,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult? Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult? Function(OtpscreenresetEvent value)? otpscreenresetEvent,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult Function(OtpscreenresetEvent value)? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtpEvent implements ResetpinEvent {
  const factory SendOtpEvent({required final String mobileNO}) =
      _$SendOtpEventImpl;

  String get mobileNO;
  @JsonKey(ignore: true)
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerfiOtpEventImplCopyWith<$Res> {
  factory _$$VerfiOtpEventImplCopyWith(
          _$VerfiOtpEventImpl value, $Res Function(_$VerfiOtpEventImpl) then) =
      __$$VerfiOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNO, String otp});
}

/// @nodoc
class __$$VerfiOtpEventImplCopyWithImpl<$Res>
    extends _$ResetpinEventCopyWithImpl<$Res, _$VerfiOtpEventImpl>
    implements _$$VerfiOtpEventImplCopyWith<$Res> {
  __$$VerfiOtpEventImplCopyWithImpl(
      _$VerfiOtpEventImpl _value, $Res Function(_$VerfiOtpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNO = null,
    Object? otp = null,
  }) {
    return _then(_$VerfiOtpEventImpl(
      mobileNO: null == mobileNO
          ? _value.mobileNO
          : mobileNO // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerfiOtpEventImpl implements VerfiOtpEvent {
  const _$VerfiOtpEventImpl({required this.mobileNO, required this.otp});

  @override
  final String mobileNO;
  @override
  final String otp;

  @override
  String toString() {
    return 'ResetpinEvent.verfiOtpEvent(mobileNO: $mobileNO, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerfiOtpEventImpl &&
            (identical(other.mobileNO, mobileNO) ||
                other.mobileNO == mobileNO) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNO, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerfiOtpEventImplCopyWith<_$VerfiOtpEventImpl> get copyWith =>
      __$$VerfiOtpEventImplCopyWithImpl<_$VerfiOtpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNO) sendOtp,
    required TResult Function(String mobileNO, String otp) verfiOtpEvent,
    required TResult Function() otptimerStateEvent,
    required TResult Function() otpscreenresetEvent,
  }) {
    return verfiOtpEvent(mobileNO, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNO)? sendOtp,
    TResult? Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult? Function()? otptimerStateEvent,
    TResult? Function()? otpscreenresetEvent,
  }) {
    return verfiOtpEvent?.call(mobileNO, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNO)? sendOtp,
    TResult Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult Function()? otptimerStateEvent,
    TResult Function()? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (verfiOtpEvent != null) {
      return verfiOtpEvent(mobileNO, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerfiOtpEvent value) verfiOtpEvent,
    required TResult Function(OtptimerStateEvent value) otptimerStateEvent,
    required TResult Function(OtpscreenresetEvent value) otpscreenresetEvent,
  }) {
    return verfiOtpEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult? Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult? Function(OtpscreenresetEvent value)? otpscreenresetEvent,
  }) {
    return verfiOtpEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult Function(OtpscreenresetEvent value)? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (verfiOtpEvent != null) {
      return verfiOtpEvent(this);
    }
    return orElse();
  }
}

abstract class VerfiOtpEvent implements ResetpinEvent {
  const factory VerfiOtpEvent(
      {required final String mobileNO,
      required final String otp}) = _$VerfiOtpEventImpl;

  String get mobileNO;
  String get otp;
  @JsonKey(ignore: true)
  _$$VerfiOtpEventImplCopyWith<_$VerfiOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtptimerStateEventImplCopyWith<$Res> {
  factory _$$OtptimerStateEventImplCopyWith(_$OtptimerStateEventImpl value,
          $Res Function(_$OtptimerStateEventImpl) then) =
      __$$OtptimerStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtptimerStateEventImplCopyWithImpl<$Res>
    extends _$ResetpinEventCopyWithImpl<$Res, _$OtptimerStateEventImpl>
    implements _$$OtptimerStateEventImplCopyWith<$Res> {
  __$$OtptimerStateEventImplCopyWithImpl(_$OtptimerStateEventImpl _value,
      $Res Function(_$OtptimerStateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtptimerStateEventImpl implements OtptimerStateEvent {
  const _$OtptimerStateEventImpl();

  @override
  String toString() {
    return 'ResetpinEvent.otptimerStateEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtptimerStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNO) sendOtp,
    required TResult Function(String mobileNO, String otp) verfiOtpEvent,
    required TResult Function() otptimerStateEvent,
    required TResult Function() otpscreenresetEvent,
  }) {
    return otptimerStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNO)? sendOtp,
    TResult? Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult? Function()? otptimerStateEvent,
    TResult? Function()? otpscreenresetEvent,
  }) {
    return otptimerStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNO)? sendOtp,
    TResult Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult Function()? otptimerStateEvent,
    TResult Function()? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (otptimerStateEvent != null) {
      return otptimerStateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerfiOtpEvent value) verfiOtpEvent,
    required TResult Function(OtptimerStateEvent value) otptimerStateEvent,
    required TResult Function(OtpscreenresetEvent value) otpscreenresetEvent,
  }) {
    return otptimerStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult? Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult? Function(OtpscreenresetEvent value)? otpscreenresetEvent,
  }) {
    return otptimerStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult Function(OtpscreenresetEvent value)? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (otptimerStateEvent != null) {
      return otptimerStateEvent(this);
    }
    return orElse();
  }
}

abstract class OtptimerStateEvent implements ResetpinEvent {
  const factory OtptimerStateEvent() = _$OtptimerStateEventImpl;
}

/// @nodoc
abstract class _$$OtpscreenresetEventImplCopyWith<$Res> {
  factory _$$OtpscreenresetEventImplCopyWith(_$OtpscreenresetEventImpl value,
          $Res Function(_$OtpscreenresetEventImpl) then) =
      __$$OtpscreenresetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpscreenresetEventImplCopyWithImpl<$Res>
    extends _$ResetpinEventCopyWithImpl<$Res, _$OtpscreenresetEventImpl>
    implements _$$OtpscreenresetEventImplCopyWith<$Res> {
  __$$OtpscreenresetEventImplCopyWithImpl(_$OtpscreenresetEventImpl _value,
      $Res Function(_$OtpscreenresetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpscreenresetEventImpl implements OtpscreenresetEvent {
  const _$OtpscreenresetEventImpl();

  @override
  String toString() {
    return 'ResetpinEvent.otpscreenresetEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpscreenresetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNO) sendOtp,
    required TResult Function(String mobileNO, String otp) verfiOtpEvent,
    required TResult Function() otptimerStateEvent,
    required TResult Function() otpscreenresetEvent,
  }) {
    return otpscreenresetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNO)? sendOtp,
    TResult? Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult? Function()? otptimerStateEvent,
    TResult? Function()? otpscreenresetEvent,
  }) {
    return otpscreenresetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNO)? sendOtp,
    TResult Function(String mobileNO, String otp)? verfiOtpEvent,
    TResult Function()? otptimerStateEvent,
    TResult Function()? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (otpscreenresetEvent != null) {
      return otpscreenresetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerfiOtpEvent value) verfiOtpEvent,
    required TResult Function(OtptimerStateEvent value) otptimerStateEvent,
    required TResult Function(OtpscreenresetEvent value) otpscreenresetEvent,
  }) {
    return otpscreenresetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult? Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult? Function(OtpscreenresetEvent value)? otpscreenresetEvent,
  }) {
    return otpscreenresetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerfiOtpEvent value)? verfiOtpEvent,
    TResult Function(OtptimerStateEvent value)? otptimerStateEvent,
    TResult Function(OtpscreenresetEvent value)? otpscreenresetEvent,
    required TResult orElse(),
  }) {
    if (otpscreenresetEvent != null) {
      return otpscreenresetEvent(this);
    }
    return orElse();
  }
}

abstract class OtpscreenresetEvent implements ResetpinEvent {
  const factory OtpscreenresetEvent() = _$OtpscreenresetEventImpl;
}

/// @nodoc
mixin _$ResetpinState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetpinStateCopyWith<$Res> {
  factory $ResetpinStateCopyWith(
          ResetpinState value, $Res Function(ResetpinState) then) =
      _$ResetpinStateCopyWithImpl<$Res, ResetpinState>;
}

/// @nodoc
class _$ResetpinStateCopyWithImpl<$Res, $Val extends ResetpinState>
    implements $ResetpinStateCopyWith<$Res> {
  _$ResetpinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpstateinitialImplCopyWith<$Res> {
  factory _$$OtpstateinitialImplCopyWith(_$OtpstateinitialImpl value,
          $Res Function(_$OtpstateinitialImpl) then) =
      __$$OtpstateinitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpstateinitialImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$OtpstateinitialImpl>
    implements _$$OtpstateinitialImplCopyWith<$Res> {
  __$$OtpstateinitialImplCopyWithImpl(
      _$OtpstateinitialImpl _value, $Res Function(_$OtpstateinitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpstateinitialImpl implements Otpstateinitial {
  const _$OtpstateinitialImpl();

  @override
  String toString() {
    return 'ResetpinState.otpstateinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpstateinitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return otpstateinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return otpstateinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpstateinitial != null) {
      return otpstateinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return otpstateinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return otpstateinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpstateinitial != null) {
      return otpstateinitial(this);
    }
    return orElse();
  }
}

abstract class Otpstateinitial implements ResetpinState {
  const factory Otpstateinitial() = _$OtpstateinitialImpl;
}

/// @nodoc
abstract class _$$OtpSendStateImplCopyWith<$Res> {
  factory _$$OtpSendStateImplCopyWith(
          _$OtpSendStateImpl value, $Res Function(_$OtpSendStateImpl) then) =
      __$$OtpSendStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpSendStateImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$OtpSendStateImpl>
    implements _$$OtpSendStateImplCopyWith<$Res> {
  __$$OtpSendStateImplCopyWithImpl(
      _$OtpSendStateImpl _value, $Res Function(_$OtpSendStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpSendStateImpl implements OtpSendState {
  const _$OtpSendStateImpl();

  @override
  String toString() {
    return 'ResetpinState.otpSendState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpSendStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return otpSendState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return otpSendState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpSendState != null) {
      return otpSendState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return otpSendState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return otpSendState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpSendState != null) {
      return otpSendState(this);
    }
    return orElse();
  }
}

abstract class OtpSendState implements ResetpinState {
  const factory OtpSendState() = _$OtpSendStateImpl;
}

/// @nodoc
abstract class _$$OtpSendSuccessImplCopyWith<$Res> {
  factory _$$OtpSendSuccessImplCopyWith(_$OtpSendSuccessImpl value,
          $Res Function(_$OtpSendSuccessImpl) then) =
      __$$OtpSendSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PinResetOtpModel pinResetOtpModel});
}

/// @nodoc
class __$$OtpSendSuccessImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$OtpSendSuccessImpl>
    implements _$$OtpSendSuccessImplCopyWith<$Res> {
  __$$OtpSendSuccessImplCopyWithImpl(
      _$OtpSendSuccessImpl _value, $Res Function(_$OtpSendSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinResetOtpModel = null,
  }) {
    return _then(_$OtpSendSuccessImpl(
      pinResetOtpModel: null == pinResetOtpModel
          ? _value.pinResetOtpModel
          : pinResetOtpModel // ignore: cast_nullable_to_non_nullable
              as PinResetOtpModel,
    ));
  }
}

/// @nodoc

class _$OtpSendSuccessImpl implements OtpSendSuccess {
  const _$OtpSendSuccessImpl({required this.pinResetOtpModel});

  @override
  final PinResetOtpModel pinResetOtpModel;

  @override
  String toString() {
    return 'ResetpinState.otpSendSuccess(pinResetOtpModel: $pinResetOtpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSendSuccessImpl &&
            (identical(other.pinResetOtpModel, pinResetOtpModel) ||
                other.pinResetOtpModel == pinResetOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinResetOtpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSendSuccessImplCopyWith<_$OtpSendSuccessImpl> get copyWith =>
      __$$OtpSendSuccessImplCopyWithImpl<_$OtpSendSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return otpSendSuccess(pinResetOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return otpSendSuccess?.call(pinResetOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpSendSuccess != null) {
      return otpSendSuccess(pinResetOtpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return otpSendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return otpSendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpSendSuccess != null) {
      return otpSendSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpSendSuccess implements ResetpinState {
  const factory OtpSendSuccess(
          {required final PinResetOtpModel pinResetOtpModel}) =
      _$OtpSendSuccessImpl;

  PinResetOtpModel get pinResetOtpModel;
  @JsonKey(ignore: true)
  _$$OtpSendSuccessImplCopyWith<_$OtpSendSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpStateImplCopyWith<$Res> {
  factory _$$VerifyOtpStateImplCopyWith(_$VerifyOtpStateImpl value,
          $Res Function(_$VerifyOtpStateImpl) then) =
      __$$VerifyOtpStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PinResetOtpModel pinResetOtpModel});
}

/// @nodoc
class __$$VerifyOtpStateImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$VerifyOtpStateImpl>
    implements _$$VerifyOtpStateImplCopyWith<$Res> {
  __$$VerifyOtpStateImplCopyWithImpl(
      _$VerifyOtpStateImpl _value, $Res Function(_$VerifyOtpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinResetOtpModel = null,
  }) {
    return _then(_$VerifyOtpStateImpl(
      pinResetOtpModel: null == pinResetOtpModel
          ? _value.pinResetOtpModel
          : pinResetOtpModel // ignore: cast_nullable_to_non_nullable
              as PinResetOtpModel,
    ));
  }
}

/// @nodoc

class _$VerifyOtpStateImpl implements VerifyOtpState {
  const _$VerifyOtpStateImpl({required this.pinResetOtpModel});

  @override
  final PinResetOtpModel pinResetOtpModel;

  @override
  String toString() {
    return 'ResetpinState.verifiedOtpState(pinResetOtpModel: $pinResetOtpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpStateImpl &&
            (identical(other.pinResetOtpModel, pinResetOtpModel) ||
                other.pinResetOtpModel == pinResetOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinResetOtpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpStateImplCopyWith<_$VerifyOtpStateImpl> get copyWith =>
      __$$VerifyOtpStateImplCopyWithImpl<_$VerifyOtpStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return verifiedOtpState(pinResetOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return verifiedOtpState?.call(pinResetOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (verifiedOtpState != null) {
      return verifiedOtpState(pinResetOtpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return verifiedOtpState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return verifiedOtpState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (verifiedOtpState != null) {
      return verifiedOtpState(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpState implements ResetpinState {
  const factory VerifyOtpState(
          {required final PinResetOtpModel pinResetOtpModel}) =
      _$VerifyOtpStateImpl;

  PinResetOtpModel get pinResetOtpModel;
  @JsonKey(ignore: true)
  _$$VerifyOtpStateImplCopyWith<_$VerifyOtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FacingissuestateImplCopyWith<$Res> {
  factory _$$FacingissuestateImplCopyWith(_$FacingissuestateImpl value,
          $Res Function(_$FacingissuestateImpl) then) =
      __$$FacingissuestateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacingissuestateImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$FacingissuestateImpl>
    implements _$$FacingissuestateImplCopyWith<$Res> {
  __$$FacingissuestateImplCopyWithImpl(_$FacingissuestateImpl _value,
      $Res Function(_$FacingissuestateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FacingissuestateImpl implements Facingissuestate {
  const _$FacingissuestateImpl();

  @override
  String toString() {
    return 'ResetpinState.facingissuestate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FacingissuestateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return facingissuestate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return facingissuestate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (facingissuestate != null) {
      return facingissuestate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return facingissuestate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return facingissuestate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (facingissuestate != null) {
      return facingissuestate(this);
    }
    return orElse();
  }
}

abstract class Facingissuestate implements ResetpinState {
  const factory Facingissuestate() = _$FacingissuestateImpl;
}

/// @nodoc
abstract class _$$OtpVerificationFailedImplCopyWith<$Res> {
  factory _$$OtpVerificationFailedImplCopyWith(
          _$OtpVerificationFailedImpl value,
          $Res Function(_$OtpVerificationFailedImpl) then) =
      __$$OtpVerificationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpmodel});
}

/// @nodoc
class __$$OtpVerificationFailedImplCopyWithImpl<$Res>
    extends _$ResetpinStateCopyWithImpl<$Res, _$OtpVerificationFailedImpl>
    implements _$$OtpVerificationFailedImplCopyWith<$Res> {
  __$$OtpVerificationFailedImplCopyWithImpl(_$OtpVerificationFailedImpl _value,
      $Res Function(_$OtpVerificationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpmodel = null,
  }) {
    return _then(_$OtpVerificationFailedImpl(
      otpmodel: null == otpmodel
          ? _value.otpmodel
          : otpmodel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationFailedImpl implements OtpVerificationFailed {
  const _$OtpVerificationFailedImpl({required this.otpmodel});

  @override
  final String otpmodel;

  @override
  String toString() {
    return 'ResetpinState.otpVerificationFailed(otpmodel: $otpmodel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationFailedImpl &&
            (identical(other.otpmodel, otpmodel) ||
                other.otpmodel == otpmodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpmodel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => __$$OtpVerificationFailedImplCopyWithImpl<
          _$OtpVerificationFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() otpstateinitial,
    required TResult Function() otpSendState,
    required TResult Function(PinResetOtpModel pinResetOtpModel) otpSendSuccess,
    required TResult Function(PinResetOtpModel pinResetOtpModel)
        verifiedOtpState,
    required TResult Function() facingissuestate,
    required TResult Function(String otpmodel) otpVerificationFailed,
  }) {
    return otpVerificationFailed(otpmodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? otpstateinitial,
    TResult? Function()? otpSendState,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult? Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult? Function()? facingissuestate,
    TResult? Function(String otpmodel)? otpVerificationFailed,
  }) {
    return otpVerificationFailed?.call(otpmodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? otpstateinitial,
    TResult Function()? otpSendState,
    TResult Function(PinResetOtpModel pinResetOtpModel)? otpSendSuccess,
    TResult Function(PinResetOtpModel pinResetOtpModel)? verifiedOtpState,
    TResult Function()? facingissuestate,
    TResult Function(String otpmodel)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(otpmodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Otpstateinitial value) otpstateinitial,
    required TResult Function(OtpSendState value) otpSendState,
    required TResult Function(OtpSendSuccess value) otpSendSuccess,
    required TResult Function(VerifyOtpState value) verifiedOtpState,
    required TResult Function(Facingissuestate value) facingissuestate,
    required TResult Function(OtpVerificationFailed value)
        otpVerificationFailed,
  }) {
    return otpVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Otpstateinitial value)? otpstateinitial,
    TResult? Function(OtpSendState value)? otpSendState,
    TResult? Function(OtpSendSuccess value)? otpSendSuccess,
    TResult? Function(VerifyOtpState value)? verifiedOtpState,
    TResult? Function(Facingissuestate value)? facingissuestate,
    TResult? Function(OtpVerificationFailed value)? otpVerificationFailed,
  }) {
    return otpVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Otpstateinitial value)? otpstateinitial,
    TResult Function(OtpSendState value)? otpSendState,
    TResult Function(OtpSendSuccess value)? otpSendSuccess,
    TResult Function(VerifyOtpState value)? verifiedOtpState,
    TResult Function(Facingissuestate value)? facingissuestate,
    TResult Function(OtpVerificationFailed value)? otpVerificationFailed,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationFailed implements ResetpinState {
  const factory OtpVerificationFailed({required final String otpmodel}) =
      _$OtpVerificationFailedImpl;

  String get otpmodel;
  @JsonKey(ignore: true)
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
