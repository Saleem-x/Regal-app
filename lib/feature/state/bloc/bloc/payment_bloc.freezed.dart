// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  String get upiId => throw _privateConstructorUsedError;
  String get orderID => throw _privateConstructorUsedError;
  String get merchatcode => throw _privateConstructorUsedError;
  QuantUPIPaymentApps? get app => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)
        initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)?
        initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)?
        initiatePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitiatePaymentEvent value) initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitiatePaymentEvent value)? initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitiatePaymentEvent value)? initiatePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
  @useResult
  $Res call(
      {String upiId,
      String orderID,
      String merchatcode,
      QuantUPIPaymentApps? app});
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiId = null,
    Object? orderID = null,
    Object? merchatcode = null,
    Object? app = freezed,
  }) {
    return _then(_value.copyWith(
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      merchatcode: null == merchatcode
          ? _value.merchatcode
          : merchatcode // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as QuantUPIPaymentApps?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitiatePaymentEventImplCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$InitiatePaymentEventImplCopyWith(_$InitiatePaymentEventImpl value,
          $Res Function(_$InitiatePaymentEventImpl) then) =
      __$$InitiatePaymentEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String upiId,
      String orderID,
      String merchatcode,
      QuantUPIPaymentApps? app});
}

/// @nodoc
class __$$InitiatePaymentEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$InitiatePaymentEventImpl>
    implements _$$InitiatePaymentEventImplCopyWith<$Res> {
  __$$InitiatePaymentEventImplCopyWithImpl(_$InitiatePaymentEventImpl _value,
      $Res Function(_$InitiatePaymentEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiId = null,
    Object? orderID = null,
    Object? merchatcode = null,
    Object? app = freezed,
  }) {
    return _then(_$InitiatePaymentEventImpl(
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      merchatcode: null == merchatcode
          ? _value.merchatcode
          : merchatcode // ignore: cast_nullable_to_non_nullable
              as String,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as QuantUPIPaymentApps?,
    ));
  }
}

/// @nodoc

class _$InitiatePaymentEventImpl implements InitiatePaymentEvent {
  const _$InitiatePaymentEventImpl(
      {required this.upiId,
      required this.orderID,
      required this.merchatcode,
      required this.app});

  @override
  final String upiId;
  @override
  final String orderID;
  @override
  final String merchatcode;
  @override
  final QuantUPIPaymentApps? app;

  @override
  String toString() {
    return 'PaymentEvent.initiatePayment(upiId: $upiId, orderID: $orderID, merchatcode: $merchatcode, app: $app)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePaymentEventImpl &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            (identical(other.merchatcode, merchatcode) ||
                other.merchatcode == merchatcode) &&
            (identical(other.app, app) || other.app == app));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, upiId, orderID, merchatcode, app);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePaymentEventImplCopyWith<_$InitiatePaymentEventImpl>
      get copyWith =>
          __$$InitiatePaymentEventImplCopyWithImpl<_$InitiatePaymentEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)
        initiatePayment,
  }) {
    return initiatePayment(upiId, orderID, merchatcode, app);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)?
        initiatePayment,
  }) {
    return initiatePayment?.call(upiId, orderID, merchatcode, app);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String upiId, String orderID, String merchatcode,
            QuantUPIPaymentApps? app)?
        initiatePayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(upiId, orderID, merchatcode, app);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitiatePaymentEvent value) initiatePayment,
  }) {
    return initiatePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitiatePaymentEvent value)? initiatePayment,
  }) {
    return initiatePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitiatePaymentEvent value)? initiatePayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(this);
    }
    return orElse();
  }
}

abstract class InitiatePaymentEvent implements PaymentEvent {
  const factory InitiatePaymentEvent(
      {required final String upiId,
      required final String orderID,
      required final String merchatcode,
      required final QuantUPIPaymentApps? app}) = _$InitiatePaymentEventImpl;

  @override
  String get upiId;
  @override
  String get orderID;
  @override
  String get merchatcode;
  @override
  QuantUPIPaymentApps? get app;
  @override
  @JsonKey(ignore: true)
  _$$InitiatePaymentEventImplCopyWith<_$InitiatePaymentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paymentinitial,
    required TResult Function() paymentSuccessState,
    required TResult Function() paymentFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paymentinitial,
    TResult? Function()? paymentSuccessState,
    TResult? Function()? paymentFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paymentinitial,
    TResult Function()? paymentSuccessState,
    TResult Function()? paymentFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Paymentinitial value) paymentinitial,
    required TResult Function(PaymentSuccessState value) paymentSuccessState,
    required TResult Function(PaymentFailedState value) paymentFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Paymentinitial value)? paymentinitial,
    TResult? Function(PaymentSuccessState value)? paymentSuccessState,
    TResult? Function(PaymentFailedState value)? paymentFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Paymentinitial value)? paymentinitial,
    TResult Function(PaymentSuccessState value)? paymentSuccessState,
    TResult Function(PaymentFailedState value)? paymentFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentinitialImplCopyWith<$Res> {
  factory _$$PaymentinitialImplCopyWith(_$PaymentinitialImpl value,
          $Res Function(_$PaymentinitialImpl) then) =
      __$$PaymentinitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentinitialImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentinitialImpl>
    implements _$$PaymentinitialImplCopyWith<$Res> {
  __$$PaymentinitialImplCopyWithImpl(
      _$PaymentinitialImpl _value, $Res Function(_$PaymentinitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentinitialImpl implements Paymentinitial {
  const _$PaymentinitialImpl();

  @override
  String toString() {
    return 'PaymentState.paymentinitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentinitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paymentinitial,
    required TResult Function() paymentSuccessState,
    required TResult Function() paymentFailedState,
  }) {
    return paymentinitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paymentinitial,
    TResult? Function()? paymentSuccessState,
    TResult? Function()? paymentFailedState,
  }) {
    return paymentinitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paymentinitial,
    TResult Function()? paymentSuccessState,
    TResult Function()? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentinitial != null) {
      return paymentinitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Paymentinitial value) paymentinitial,
    required TResult Function(PaymentSuccessState value) paymentSuccessState,
    required TResult Function(PaymentFailedState value) paymentFailedState,
  }) {
    return paymentinitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Paymentinitial value)? paymentinitial,
    TResult? Function(PaymentSuccessState value)? paymentSuccessState,
    TResult? Function(PaymentFailedState value)? paymentFailedState,
  }) {
    return paymentinitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Paymentinitial value)? paymentinitial,
    TResult Function(PaymentSuccessState value)? paymentSuccessState,
    TResult Function(PaymentFailedState value)? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentinitial != null) {
      return paymentinitial(this);
    }
    return orElse();
  }
}

abstract class Paymentinitial implements PaymentState {
  const factory Paymentinitial() = _$PaymentinitialImpl;
}

/// @nodoc
abstract class _$$PaymentSuccessStateImplCopyWith<$Res> {
  factory _$$PaymentSuccessStateImplCopyWith(_$PaymentSuccessStateImpl value,
          $Res Function(_$PaymentSuccessStateImpl) then) =
      __$$PaymentSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSuccessStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentSuccessStateImpl>
    implements _$$PaymentSuccessStateImplCopyWith<$Res> {
  __$$PaymentSuccessStateImplCopyWithImpl(_$PaymentSuccessStateImpl _value,
      $Res Function(_$PaymentSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentSuccessStateImpl implements PaymentSuccessState {
  const _$PaymentSuccessStateImpl();

  @override
  String toString() {
    return 'PaymentState.paymentSuccessState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paymentinitial,
    required TResult Function() paymentSuccessState,
    required TResult Function() paymentFailedState,
  }) {
    return paymentSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paymentinitial,
    TResult? Function()? paymentSuccessState,
    TResult? Function()? paymentFailedState,
  }) {
    return paymentSuccessState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paymentinitial,
    TResult Function()? paymentSuccessState,
    TResult Function()? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentSuccessState != null) {
      return paymentSuccessState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Paymentinitial value) paymentinitial,
    required TResult Function(PaymentSuccessState value) paymentSuccessState,
    required TResult Function(PaymentFailedState value) paymentFailedState,
  }) {
    return paymentSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Paymentinitial value)? paymentinitial,
    TResult? Function(PaymentSuccessState value)? paymentSuccessState,
    TResult? Function(PaymentFailedState value)? paymentFailedState,
  }) {
    return paymentSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Paymentinitial value)? paymentinitial,
    TResult Function(PaymentSuccessState value)? paymentSuccessState,
    TResult Function(PaymentFailedState value)? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentSuccessState != null) {
      return paymentSuccessState(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessState implements PaymentState {
  const factory PaymentSuccessState() = _$PaymentSuccessStateImpl;
}

/// @nodoc
abstract class _$$PaymentFailedStateImplCopyWith<$Res> {
  factory _$$PaymentFailedStateImplCopyWith(_$PaymentFailedStateImpl value,
          $Res Function(_$PaymentFailedStateImpl) then) =
      __$$PaymentFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentFailedStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentFailedStateImpl>
    implements _$$PaymentFailedStateImplCopyWith<$Res> {
  __$$PaymentFailedStateImplCopyWithImpl(_$PaymentFailedStateImpl _value,
      $Res Function(_$PaymentFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentFailedStateImpl implements PaymentFailedState {
  const _$PaymentFailedStateImpl();

  @override
  String toString() {
    return 'PaymentState.paymentFailedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() paymentinitial,
    required TResult Function() paymentSuccessState,
    required TResult Function() paymentFailedState,
  }) {
    return paymentFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? paymentinitial,
    TResult? Function()? paymentSuccessState,
    TResult? Function()? paymentFailedState,
  }) {
    return paymentFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? paymentinitial,
    TResult Function()? paymentSuccessState,
    TResult Function()? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentFailedState != null) {
      return paymentFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Paymentinitial value) paymentinitial,
    required TResult Function(PaymentSuccessState value) paymentSuccessState,
    required TResult Function(PaymentFailedState value) paymentFailedState,
  }) {
    return paymentFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Paymentinitial value)? paymentinitial,
    TResult? Function(PaymentSuccessState value)? paymentSuccessState,
    TResult? Function(PaymentFailedState value)? paymentFailedState,
  }) {
    return paymentFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Paymentinitial value)? paymentinitial,
    TResult Function(PaymentSuccessState value)? paymentSuccessState,
    TResult Function(PaymentFailedState value)? paymentFailedState,
    required TResult orElse(),
  }) {
    if (paymentFailedState != null) {
      return paymentFailedState(this);
    }
    return orElse();
  }
}

abstract class PaymentFailedState implements PaymentState {
  const factory PaymentFailedState() = _$PaymentFailedStateImpl;
}
