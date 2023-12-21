// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paymentresponse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentresponseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String response) checkpaymentresponse,
    required TResult Function() addResponseLoadingEvent,
    required TResult Function() rsetresponseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String response)? checkpaymentresponse,
    TResult? Function()? addResponseLoadingEvent,
    TResult? Function()? rsetresponseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String response)? checkpaymentresponse,
    TResult Function()? addResponseLoadingEvent,
    TResult Function()? rsetresponseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckpaymentresponseEvent value)
        checkpaymentresponse,
    required TResult Function(AddRresponseLoadingEvent value)
        addResponseLoadingEvent,
    required TResult Function(ResetresponseEvent value) rsetresponseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult? Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult? Function(ResetresponseEvent value)? rsetresponseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult Function(ResetresponseEvent value)? rsetresponseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentresponseEventCopyWith<$Res> {
  factory $PaymentresponseEventCopyWith(PaymentresponseEvent value,
          $Res Function(PaymentresponseEvent) then) =
      _$PaymentresponseEventCopyWithImpl<$Res, PaymentresponseEvent>;
}

/// @nodoc
class _$PaymentresponseEventCopyWithImpl<$Res,
        $Val extends PaymentresponseEvent>
    implements $PaymentresponseEventCopyWith<$Res> {
  _$PaymentresponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckpaymentresponseEventImplCopyWith<$Res> {
  factory _$$CheckpaymentresponseEventImplCopyWith(
          _$CheckpaymentresponseEventImpl value,
          $Res Function(_$CheckpaymentresponseEventImpl) then) =
      __$$CheckpaymentresponseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$CheckpaymentresponseEventImplCopyWithImpl<$Res>
    extends _$PaymentresponseEventCopyWithImpl<$Res,
        _$CheckpaymentresponseEventImpl>
    implements _$$CheckpaymentresponseEventImplCopyWith<$Res> {
  __$$CheckpaymentresponseEventImplCopyWithImpl(
      _$CheckpaymentresponseEventImpl _value,
      $Res Function(_$CheckpaymentresponseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CheckpaymentresponseEventImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckpaymentresponseEventImpl implements CheckpaymentresponseEvent {
  const _$CheckpaymentresponseEventImpl({required this.response});

  @override
  final String response;

  @override
  String toString() {
    return 'PaymentresponseEvent.checkpaymentresponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckpaymentresponseEventImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckpaymentresponseEventImplCopyWith<_$CheckpaymentresponseEventImpl>
      get copyWith => __$$CheckpaymentresponseEventImplCopyWithImpl<
          _$CheckpaymentresponseEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String response) checkpaymentresponse,
    required TResult Function() addResponseLoadingEvent,
    required TResult Function() rsetresponseEvent,
  }) {
    return checkpaymentresponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String response)? checkpaymentresponse,
    TResult? Function()? addResponseLoadingEvent,
    TResult? Function()? rsetresponseEvent,
  }) {
    return checkpaymentresponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String response)? checkpaymentresponse,
    TResult Function()? addResponseLoadingEvent,
    TResult Function()? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (checkpaymentresponse != null) {
      return checkpaymentresponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckpaymentresponseEvent value)
        checkpaymentresponse,
    required TResult Function(AddRresponseLoadingEvent value)
        addResponseLoadingEvent,
    required TResult Function(ResetresponseEvent value) rsetresponseEvent,
  }) {
    return checkpaymentresponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult? Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult? Function(ResetresponseEvent value)? rsetresponseEvent,
  }) {
    return checkpaymentresponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult Function(ResetresponseEvent value)? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (checkpaymentresponse != null) {
      return checkpaymentresponse(this);
    }
    return orElse();
  }
}

abstract class CheckpaymentresponseEvent implements PaymentresponseEvent {
  const factory CheckpaymentresponseEvent({required final String response}) =
      _$CheckpaymentresponseEventImpl;

  String get response;
  @JsonKey(ignore: true)
  _$$CheckpaymentresponseEventImplCopyWith<_$CheckpaymentresponseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRresponseLoadingEventImplCopyWith<$Res> {
  factory _$$AddRresponseLoadingEventImplCopyWith(
          _$AddRresponseLoadingEventImpl value,
          $Res Function(_$AddRresponseLoadingEventImpl) then) =
      __$$AddRresponseLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddRresponseLoadingEventImplCopyWithImpl<$Res>
    extends _$PaymentresponseEventCopyWithImpl<$Res,
        _$AddRresponseLoadingEventImpl>
    implements _$$AddRresponseLoadingEventImplCopyWith<$Res> {
  __$$AddRresponseLoadingEventImplCopyWithImpl(
      _$AddRresponseLoadingEventImpl _value,
      $Res Function(_$AddRresponseLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddRresponseLoadingEventImpl implements AddRresponseLoadingEvent {
  const _$AddRresponseLoadingEventImpl();

  @override
  String toString() {
    return 'PaymentresponseEvent.addResponseLoadingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRresponseLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String response) checkpaymentresponse,
    required TResult Function() addResponseLoadingEvent,
    required TResult Function() rsetresponseEvent,
  }) {
    return addResponseLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String response)? checkpaymentresponse,
    TResult? Function()? addResponseLoadingEvent,
    TResult? Function()? rsetresponseEvent,
  }) {
    return addResponseLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String response)? checkpaymentresponse,
    TResult Function()? addResponseLoadingEvent,
    TResult Function()? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (addResponseLoadingEvent != null) {
      return addResponseLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckpaymentresponseEvent value)
        checkpaymentresponse,
    required TResult Function(AddRresponseLoadingEvent value)
        addResponseLoadingEvent,
    required TResult Function(ResetresponseEvent value) rsetresponseEvent,
  }) {
    return addResponseLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult? Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult? Function(ResetresponseEvent value)? rsetresponseEvent,
  }) {
    return addResponseLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult Function(ResetresponseEvent value)? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (addResponseLoadingEvent != null) {
      return addResponseLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddRresponseLoadingEvent implements PaymentresponseEvent {
  const factory AddRresponseLoadingEvent() = _$AddRresponseLoadingEventImpl;
}

/// @nodoc
abstract class _$$ResetresponseEventImplCopyWith<$Res> {
  factory _$$ResetresponseEventImplCopyWith(_$ResetresponseEventImpl value,
          $Res Function(_$ResetresponseEventImpl) then) =
      __$$ResetresponseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetresponseEventImplCopyWithImpl<$Res>
    extends _$PaymentresponseEventCopyWithImpl<$Res, _$ResetresponseEventImpl>
    implements _$$ResetresponseEventImplCopyWith<$Res> {
  __$$ResetresponseEventImplCopyWithImpl(_$ResetresponseEventImpl _value,
      $Res Function(_$ResetresponseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetresponseEventImpl implements ResetresponseEvent {
  const _$ResetresponseEventImpl();

  @override
  String toString() {
    return 'PaymentresponseEvent.rsetresponseEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetresponseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String response) checkpaymentresponse,
    required TResult Function() addResponseLoadingEvent,
    required TResult Function() rsetresponseEvent,
  }) {
    return rsetresponseEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String response)? checkpaymentresponse,
    TResult? Function()? addResponseLoadingEvent,
    TResult? Function()? rsetresponseEvent,
  }) {
    return rsetresponseEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String response)? checkpaymentresponse,
    TResult Function()? addResponseLoadingEvent,
    TResult Function()? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (rsetresponseEvent != null) {
      return rsetresponseEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckpaymentresponseEvent value)
        checkpaymentresponse,
    required TResult Function(AddRresponseLoadingEvent value)
        addResponseLoadingEvent,
    required TResult Function(ResetresponseEvent value) rsetresponseEvent,
  }) {
    return rsetresponseEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult? Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult? Function(ResetresponseEvent value)? rsetresponseEvent,
  }) {
    return rsetresponseEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckpaymentresponseEvent value)? checkpaymentresponse,
    TResult Function(AddRresponseLoadingEvent value)? addResponseLoadingEvent,
    TResult Function(ResetresponseEvent value)? rsetresponseEvent,
    required TResult orElse(),
  }) {
    if (rsetresponseEvent != null) {
      return rsetresponseEvent(this);
    }
    return orElse();
  }
}

abstract class ResetresponseEvent implements PaymentresponseEvent {
  const factory ResetresponseEvent() = _$ResetresponseEventImpl;
}

/// @nodoc
mixin _$PaymentresponseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? response) havepaymentResponseState,
    required TResult Function() paymentstateReset,
    required TResult Function() responseLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? response)? havepaymentResponseState,
    TResult? Function()? paymentstateReset,
    TResult? Function()? responseLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? response)? havepaymentResponseState,
    TResult Function()? paymentstateReset,
    TResult Function()? responseLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePaymentResponseState value)
        havepaymentResponseState,
    required TResult Function(PaymentstateReset value) paymentstateReset,
    required TResult Function(ResponseLoadingState value) responseLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult? Function(PaymentstateReset value)? paymentstateReset,
    TResult? Function(ResponseLoadingState value)? responseLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult Function(PaymentstateReset value)? paymentstateReset,
    TResult Function(ResponseLoadingState value)? responseLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentresponseStateCopyWith<$Res> {
  factory $PaymentresponseStateCopyWith(PaymentresponseState value,
          $Res Function(PaymentresponseState) then) =
      _$PaymentresponseStateCopyWithImpl<$Res, PaymentresponseState>;
}

/// @nodoc
class _$PaymentresponseStateCopyWithImpl<$Res,
        $Val extends PaymentresponseState>
    implements $PaymentresponseStateCopyWith<$Res> {
  _$PaymentresponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HavePaymentResponseStateImplCopyWith<$Res> {
  factory _$$HavePaymentResponseStateImplCopyWith(
          _$HavePaymentResponseStateImpl value,
          $Res Function(_$HavePaymentResponseStateImpl) then) =
      __$$HavePaymentResponseStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? response});
}

/// @nodoc
class __$$HavePaymentResponseStateImplCopyWithImpl<$Res>
    extends _$PaymentresponseStateCopyWithImpl<$Res,
        _$HavePaymentResponseStateImpl>
    implements _$$HavePaymentResponseStateImplCopyWith<$Res> {
  __$$HavePaymentResponseStateImplCopyWithImpl(
      _$HavePaymentResponseStateImpl _value,
      $Res Function(_$HavePaymentResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$HavePaymentResponseStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HavePaymentResponseStateImpl implements HavePaymentResponseState {
  const _$HavePaymentResponseStateImpl({required this.response});

  @override
  final String? response;

  @override
  String toString() {
    return 'PaymentresponseState.havepaymentResponseState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HavePaymentResponseStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HavePaymentResponseStateImplCopyWith<_$HavePaymentResponseStateImpl>
      get copyWith => __$$HavePaymentResponseStateImplCopyWithImpl<
          _$HavePaymentResponseStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? response) havepaymentResponseState,
    required TResult Function() paymentstateReset,
    required TResult Function() responseLoadingState,
  }) {
    return havepaymentResponseState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? response)? havepaymentResponseState,
    TResult? Function()? paymentstateReset,
    TResult? Function()? responseLoadingState,
  }) {
    return havepaymentResponseState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? response)? havepaymentResponseState,
    TResult Function()? paymentstateReset,
    TResult Function()? responseLoadingState,
    required TResult orElse(),
  }) {
    if (havepaymentResponseState != null) {
      return havepaymentResponseState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePaymentResponseState value)
        havepaymentResponseState,
    required TResult Function(PaymentstateReset value) paymentstateReset,
    required TResult Function(ResponseLoadingState value) responseLoadingState,
  }) {
    return havepaymentResponseState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult? Function(PaymentstateReset value)? paymentstateReset,
    TResult? Function(ResponseLoadingState value)? responseLoadingState,
  }) {
    return havepaymentResponseState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult Function(PaymentstateReset value)? paymentstateReset,
    TResult Function(ResponseLoadingState value)? responseLoadingState,
    required TResult orElse(),
  }) {
    if (havepaymentResponseState != null) {
      return havepaymentResponseState(this);
    }
    return orElse();
  }
}

abstract class HavePaymentResponseState implements PaymentresponseState {
  const factory HavePaymentResponseState({required final String? response}) =
      _$HavePaymentResponseStateImpl;

  String? get response;
  @JsonKey(ignore: true)
  _$$HavePaymentResponseStateImplCopyWith<_$HavePaymentResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentstateResetImplCopyWith<$Res> {
  factory _$$PaymentstateResetImplCopyWith(_$PaymentstateResetImpl value,
          $Res Function(_$PaymentstateResetImpl) then) =
      __$$PaymentstateResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentstateResetImplCopyWithImpl<$Res>
    extends _$PaymentresponseStateCopyWithImpl<$Res, _$PaymentstateResetImpl>
    implements _$$PaymentstateResetImplCopyWith<$Res> {
  __$$PaymentstateResetImplCopyWithImpl(_$PaymentstateResetImpl _value,
      $Res Function(_$PaymentstateResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentstateResetImpl implements PaymentstateReset {
  const _$PaymentstateResetImpl();

  @override
  String toString() {
    return 'PaymentresponseState.paymentstateReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentstateResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? response) havepaymentResponseState,
    required TResult Function() paymentstateReset,
    required TResult Function() responseLoadingState,
  }) {
    return paymentstateReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? response)? havepaymentResponseState,
    TResult? Function()? paymentstateReset,
    TResult? Function()? responseLoadingState,
  }) {
    return paymentstateReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? response)? havepaymentResponseState,
    TResult Function()? paymentstateReset,
    TResult Function()? responseLoadingState,
    required TResult orElse(),
  }) {
    if (paymentstateReset != null) {
      return paymentstateReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePaymentResponseState value)
        havepaymentResponseState,
    required TResult Function(PaymentstateReset value) paymentstateReset,
    required TResult Function(ResponseLoadingState value) responseLoadingState,
  }) {
    return paymentstateReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult? Function(PaymentstateReset value)? paymentstateReset,
    TResult? Function(ResponseLoadingState value)? responseLoadingState,
  }) {
    return paymentstateReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult Function(PaymentstateReset value)? paymentstateReset,
    TResult Function(ResponseLoadingState value)? responseLoadingState,
    required TResult orElse(),
  }) {
    if (paymentstateReset != null) {
      return paymentstateReset(this);
    }
    return orElse();
  }
}

abstract class PaymentstateReset implements PaymentresponseState {
  const factory PaymentstateReset() = _$PaymentstateResetImpl;
}

/// @nodoc
abstract class _$$ResponseLoadingStateImplCopyWith<$Res> {
  factory _$$ResponseLoadingStateImplCopyWith(_$ResponseLoadingStateImpl value,
          $Res Function(_$ResponseLoadingStateImpl) then) =
      __$$ResponseLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResponseLoadingStateImplCopyWithImpl<$Res>
    extends _$PaymentresponseStateCopyWithImpl<$Res, _$ResponseLoadingStateImpl>
    implements _$$ResponseLoadingStateImplCopyWith<$Res> {
  __$$ResponseLoadingStateImplCopyWithImpl(_$ResponseLoadingStateImpl _value,
      $Res Function(_$ResponseLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResponseLoadingStateImpl implements ResponseLoadingState {
  const _$ResponseLoadingStateImpl();

  @override
  String toString() {
    return 'PaymentresponseState.responseLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? response) havepaymentResponseState,
    required TResult Function() paymentstateReset,
    required TResult Function() responseLoadingState,
  }) {
    return responseLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? response)? havepaymentResponseState,
    TResult? Function()? paymentstateReset,
    TResult? Function()? responseLoadingState,
  }) {
    return responseLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? response)? havepaymentResponseState,
    TResult Function()? paymentstateReset,
    TResult Function()? responseLoadingState,
    required TResult orElse(),
  }) {
    if (responseLoadingState != null) {
      return responseLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePaymentResponseState value)
        havepaymentResponseState,
    required TResult Function(PaymentstateReset value) paymentstateReset,
    required TResult Function(ResponseLoadingState value) responseLoadingState,
  }) {
    return responseLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult? Function(PaymentstateReset value)? paymentstateReset,
    TResult? Function(ResponseLoadingState value)? responseLoadingState,
  }) {
    return responseLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePaymentResponseState value)? havepaymentResponseState,
    TResult Function(PaymentstateReset value)? paymentstateReset,
    TResult Function(ResponseLoadingState value)? responseLoadingState,
    required TResult orElse(),
  }) {
    if (responseLoadingState != null) {
      return responseLoadingState(this);
    }
    return orElse();
  }
}

abstract class ResponseLoadingState implements PaymentresponseState {
  const factory ResponseLoadingState() = _$ResponseLoadingStateImpl;
}
