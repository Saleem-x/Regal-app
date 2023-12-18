// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updatepaymentstatus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdatepaymentstatusEvent {
  PaymentStatusUpdateModel get updatestatus =>
      throw _privateConstructorUsedError;
  PaymentRespModel get gpayresp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)
        updatepaymentstatusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)?
        updatepaymentstatusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)?
        updatepaymentstatusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentstatusUpdateEvent value)
        updatepaymentstatusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentstatusUpdateEvent value)? updatepaymentstatusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentstatusUpdateEvent value)? updatepaymentstatusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatepaymentstatusEventCopyWith<UpdatepaymentstatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatepaymentstatusEventCopyWith<$Res> {
  factory $UpdatepaymentstatusEventCopyWith(UpdatepaymentstatusEvent value,
          $Res Function(UpdatepaymentstatusEvent) then) =
      _$UpdatepaymentstatusEventCopyWithImpl<$Res, UpdatepaymentstatusEvent>;
  @useResult
  $Res call({PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp});
}

/// @nodoc
class _$UpdatepaymentstatusEventCopyWithImpl<$Res,
        $Val extends UpdatepaymentstatusEvent>
    implements $UpdatepaymentstatusEventCopyWith<$Res> {
  _$UpdatepaymentstatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatestatus = null,
    Object? gpayresp = null,
  }) {
    return _then(_value.copyWith(
      updatestatus: null == updatestatus
          ? _value.updatestatus
          : updatestatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusUpdateModel,
      gpayresp: null == gpayresp
          ? _value.gpayresp
          : gpayresp // ignore: cast_nullable_to_non_nullable
              as PaymentRespModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentstatusUpdateEventImplCopyWith<$Res>
    implements $UpdatepaymentstatusEventCopyWith<$Res> {
  factory _$$PaymentstatusUpdateEventImplCopyWith(
          _$PaymentstatusUpdateEventImpl value,
          $Res Function(_$PaymentstatusUpdateEventImpl) then) =
      __$$PaymentstatusUpdateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp});
}

/// @nodoc
class __$$PaymentstatusUpdateEventImplCopyWithImpl<$Res>
    extends _$UpdatepaymentstatusEventCopyWithImpl<$Res,
        _$PaymentstatusUpdateEventImpl>
    implements _$$PaymentstatusUpdateEventImplCopyWith<$Res> {
  __$$PaymentstatusUpdateEventImplCopyWithImpl(
      _$PaymentstatusUpdateEventImpl _value,
      $Res Function(_$PaymentstatusUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatestatus = null,
    Object? gpayresp = null,
  }) {
    return _then(_$PaymentstatusUpdateEventImpl(
      updatestatus: null == updatestatus
          ? _value.updatestatus
          : updatestatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusUpdateModel,
      gpayresp: null == gpayresp
          ? _value.gpayresp
          : gpayresp // ignore: cast_nullable_to_non_nullable
              as PaymentRespModel,
    ));
  }
}

/// @nodoc

class _$PaymentstatusUpdateEventImpl implements PaymentstatusUpdateEvent {
  const _$PaymentstatusUpdateEventImpl(
      {required this.updatestatus, required this.gpayresp});

  @override
  final PaymentStatusUpdateModel updatestatus;
  @override
  final PaymentRespModel gpayresp;

  @override
  String toString() {
    return 'UpdatepaymentstatusEvent.updatepaymentstatusEvent(updatestatus: $updatestatus, gpayresp: $gpayresp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentstatusUpdateEventImpl &&
            (identical(other.updatestatus, updatestatus) ||
                other.updatestatus == updatestatus) &&
            (identical(other.gpayresp, gpayresp) ||
                other.gpayresp == gpayresp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatestatus, gpayresp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentstatusUpdateEventImplCopyWith<_$PaymentstatusUpdateEventImpl>
      get copyWith => __$$PaymentstatusUpdateEventImplCopyWithImpl<
          _$PaymentstatusUpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)
        updatepaymentstatusEvent,
  }) {
    return updatepaymentstatusEvent(updatestatus, gpayresp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)?
        updatepaymentstatusEvent,
  }) {
    return updatepaymentstatusEvent?.call(updatestatus, gpayresp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PaymentStatusUpdateModel updatestatus, PaymentRespModel gpayresp)?
        updatepaymentstatusEvent,
    required TResult orElse(),
  }) {
    if (updatepaymentstatusEvent != null) {
      return updatepaymentstatusEvent(updatestatus, gpayresp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentstatusUpdateEvent value)
        updatepaymentstatusEvent,
  }) {
    return updatepaymentstatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentstatusUpdateEvent value)? updatepaymentstatusEvent,
  }) {
    return updatepaymentstatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentstatusUpdateEvent value)? updatepaymentstatusEvent,
    required TResult orElse(),
  }) {
    if (updatepaymentstatusEvent != null) {
      return updatepaymentstatusEvent(this);
    }
    return orElse();
  }
}

abstract class PaymentstatusUpdateEvent implements UpdatepaymentstatusEvent {
  const factory PaymentstatusUpdateEvent(
          {required final PaymentStatusUpdateModel updatestatus,
          required final PaymentRespModel gpayresp}) =
      _$PaymentstatusUpdateEventImpl;

  @override
  PaymentStatusUpdateModel get updatestatus;
  @override
  PaymentRespModel get gpayresp;
  @override
  @JsonKey(ignore: true)
  _$$PaymentstatusUpdateEventImplCopyWith<_$PaymentstatusUpdateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdatepaymentstatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)
        paymentstatusUpdateState,
    required TResult Function(String error) paymentstatusUpdateFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult? Function(String error)? paymentstatusUpdateFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult Function(String error)? paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_paymentstatusUpdateState value)
        paymentstatusUpdateState,
    required TResult Function(PaymentstatusUpdateFailedState value)
        paymentstatusUpdateFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_paymentstatusUpdateState value)?
        paymentstatusUpdateState,
    TResult? Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_paymentstatusUpdateState value)? paymentstatusUpdateState,
    TResult Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatepaymentstatusStateCopyWith<$Res> {
  factory $UpdatepaymentstatusStateCopyWith(UpdatepaymentstatusState value,
          $Res Function(UpdatepaymentstatusState) then) =
      _$UpdatepaymentstatusStateCopyWithImpl<$Res, UpdatepaymentstatusState>;
}

/// @nodoc
class _$UpdatepaymentstatusStateCopyWithImpl<$Res,
        $Val extends UpdatepaymentstatusState>
    implements $UpdatepaymentstatusStateCopyWith<$Res> {
  _$UpdatepaymentstatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$paymentstatusUpdateStateImplCopyWith<$Res> {
  factory _$$paymentstatusUpdateStateImplCopyWith(
          _$paymentstatusUpdateStateImpl value,
          $Res Function(_$paymentstatusUpdateStateImpl) then) =
      __$$paymentstatusUpdateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp});
}

/// @nodoc
class __$$paymentstatusUpdateStateImplCopyWithImpl<$Res>
    extends _$UpdatepaymentstatusStateCopyWithImpl<$Res,
        _$paymentstatusUpdateStateImpl>
    implements _$$paymentstatusUpdateStateImplCopyWith<$Res> {
  __$$paymentstatusUpdateStateImplCopyWithImpl(
      _$paymentstatusUpdateStateImpl _value,
      $Res Function(_$paymentstatusUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
    Object? gpayresp = freezed,
  }) {
    return _then(_$paymentstatusUpdateStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as PaymentStatusUpdateRespModel?,
      gpayresp: freezed == gpayresp
          ? _value.gpayresp
          : gpayresp // ignore: cast_nullable_to_non_nullable
              as PaymentRespModel?,
    ));
  }
}

/// @nodoc

class _$paymentstatusUpdateStateImpl implements _paymentstatusUpdateState {
  const _$paymentstatusUpdateStateImpl(
      {required this.resp, required this.gpayresp});

  @override
  final PaymentStatusUpdateRespModel? resp;
  @override
  final PaymentRespModel? gpayresp;

  @override
  String toString() {
    return 'UpdatepaymentstatusState.paymentstatusUpdateState(resp: $resp, gpayresp: $gpayresp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$paymentstatusUpdateStateImpl &&
            (identical(other.resp, resp) || other.resp == resp) &&
            (identical(other.gpayresp, gpayresp) ||
                other.gpayresp == gpayresp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp, gpayresp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$paymentstatusUpdateStateImplCopyWith<_$paymentstatusUpdateStateImpl>
      get copyWith => __$$paymentstatusUpdateStateImplCopyWithImpl<
          _$paymentstatusUpdateStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)
        paymentstatusUpdateState,
    required TResult Function(String error) paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateState(resp, gpayresp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult? Function(String error)? paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateState?.call(resp, gpayresp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult Function(String error)? paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) {
    if (paymentstatusUpdateState != null) {
      return paymentstatusUpdateState(resp, gpayresp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_paymentstatusUpdateState value)
        paymentstatusUpdateState,
    required TResult Function(PaymentstatusUpdateFailedState value)
        paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_paymentstatusUpdateState value)?
        paymentstatusUpdateState,
    TResult? Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_paymentstatusUpdateState value)? paymentstatusUpdateState,
    TResult Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) {
    if (paymentstatusUpdateState != null) {
      return paymentstatusUpdateState(this);
    }
    return orElse();
  }
}

abstract class _paymentstatusUpdateState implements UpdatepaymentstatusState {
  const factory _paymentstatusUpdateState(
          {required final PaymentStatusUpdateRespModel? resp,
          required final PaymentRespModel? gpayresp}) =
      _$paymentstatusUpdateStateImpl;

  PaymentStatusUpdateRespModel? get resp;
  PaymentRespModel? get gpayresp;
  @JsonKey(ignore: true)
  _$$paymentstatusUpdateStateImplCopyWith<_$paymentstatusUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentstatusUpdateFailedStateImplCopyWith<$Res> {
  factory _$$PaymentstatusUpdateFailedStateImplCopyWith(
          _$PaymentstatusUpdateFailedStateImpl value,
          $Res Function(_$PaymentstatusUpdateFailedStateImpl) then) =
      __$$PaymentstatusUpdateFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PaymentstatusUpdateFailedStateImplCopyWithImpl<$Res>
    extends _$UpdatepaymentstatusStateCopyWithImpl<$Res,
        _$PaymentstatusUpdateFailedStateImpl>
    implements _$$PaymentstatusUpdateFailedStateImplCopyWith<$Res> {
  __$$PaymentstatusUpdateFailedStateImplCopyWithImpl(
      _$PaymentstatusUpdateFailedStateImpl _value,
      $Res Function(_$PaymentstatusUpdateFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaymentstatusUpdateFailedStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentstatusUpdateFailedStateImpl
    implements PaymentstatusUpdateFailedState {
  const _$PaymentstatusUpdateFailedStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdatepaymentstatusState.paymentstatusUpdateFailedState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentstatusUpdateFailedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentstatusUpdateFailedStateImplCopyWith<
          _$PaymentstatusUpdateFailedStateImpl>
      get copyWith => __$$PaymentstatusUpdateFailedStateImplCopyWithImpl<
          _$PaymentstatusUpdateFailedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)
        paymentstatusUpdateState,
    required TResult Function(String error) paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateFailedState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult? Function(String error)? paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateFailedState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PaymentStatusUpdateRespModel? resp, PaymentRespModel? gpayresp)?
        paymentstatusUpdateState,
    TResult Function(String error)? paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) {
    if (paymentstatusUpdateFailedState != null) {
      return paymentstatusUpdateFailedState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_paymentstatusUpdateState value)
        paymentstatusUpdateState,
    required TResult Function(PaymentstatusUpdateFailedState value)
        paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_paymentstatusUpdateState value)?
        paymentstatusUpdateState,
    TResult? Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
  }) {
    return paymentstatusUpdateFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_paymentstatusUpdateState value)? paymentstatusUpdateState,
    TResult Function(PaymentstatusUpdateFailedState value)?
        paymentstatusUpdateFailedState,
    required TResult orElse(),
  }) {
    if (paymentstatusUpdateFailedState != null) {
      return paymentstatusUpdateFailedState(this);
    }
    return orElse();
  }
}

abstract class PaymentstatusUpdateFailedState
    implements UpdatepaymentstatusState {
  const factory PaymentstatusUpdateFailedState({required final String error}) =
      _$PaymentstatusUpdateFailedStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$PaymentstatusUpdateFailedStateImplCopyWith<
          _$PaymentstatusUpdateFailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
