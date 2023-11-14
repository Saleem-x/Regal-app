// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instalmenthystory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InstalmenthystoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String joinId, String schemeNO) getInstHystory,
    required TResult Function() resetDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String joinId, String schemeNO)? getInstHystory,
    TResult? Function()? resetDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String joinId, String schemeNO)? getInstHystory,
    TResult Function()? resetDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInstHystory value) getInstHystory,
    required TResult Function(ResetDataEvent value) resetDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInstHystory value)? getInstHystory,
    TResult? Function(ResetDataEvent value)? resetDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInstHystory value)? getInstHystory,
    TResult Function(ResetDataEvent value)? resetDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstalmenthystoryEventCopyWith<$Res> {
  factory $InstalmenthystoryEventCopyWith(InstalmenthystoryEvent value,
          $Res Function(InstalmenthystoryEvent) then) =
      _$InstalmenthystoryEventCopyWithImpl<$Res, InstalmenthystoryEvent>;
}

/// @nodoc
class _$InstalmenthystoryEventCopyWithImpl<$Res,
        $Val extends InstalmenthystoryEvent>
    implements $InstalmenthystoryEventCopyWith<$Res> {
  _$InstalmenthystoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInstHystoryImplCopyWith<$Res> {
  factory _$$GetInstHystoryImplCopyWith(_$GetInstHystoryImpl value,
          $Res Function(_$GetInstHystoryImpl) then) =
      __$$GetInstHystoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String joinId, String schemeNO});
}

/// @nodoc
class __$$GetInstHystoryImplCopyWithImpl<$Res>
    extends _$InstalmenthystoryEventCopyWithImpl<$Res, _$GetInstHystoryImpl>
    implements _$$GetInstHystoryImplCopyWith<$Res> {
  __$$GetInstHystoryImplCopyWithImpl(
      _$GetInstHystoryImpl _value, $Res Function(_$GetInstHystoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinId = null,
    Object? schemeNO = null,
  }) {
    return _then(_$GetInstHystoryImpl(
      joinId: null == joinId
          ? _value.joinId
          : joinId // ignore: cast_nullable_to_non_nullable
              as String,
      schemeNO: null == schemeNO
          ? _value.schemeNO
          : schemeNO // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInstHystoryImpl implements GetInstHystory {
  const _$GetInstHystoryImpl({required this.joinId, required this.schemeNO});

  @override
  final String joinId;
  @override
  final String schemeNO;

  @override
  String toString() {
    return 'InstalmenthystoryEvent.getInstHystory(joinId: $joinId, schemeNO: $schemeNO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInstHystoryImpl &&
            (identical(other.joinId, joinId) || other.joinId == joinId) &&
            (identical(other.schemeNO, schemeNO) ||
                other.schemeNO == schemeNO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joinId, schemeNO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInstHystoryImplCopyWith<_$GetInstHystoryImpl> get copyWith =>
      __$$GetInstHystoryImplCopyWithImpl<_$GetInstHystoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String joinId, String schemeNO) getInstHystory,
    required TResult Function() resetDataEvent,
  }) {
    return getInstHystory(joinId, schemeNO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String joinId, String schemeNO)? getInstHystory,
    TResult? Function()? resetDataEvent,
  }) {
    return getInstHystory?.call(joinId, schemeNO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String joinId, String schemeNO)? getInstHystory,
    TResult Function()? resetDataEvent,
    required TResult orElse(),
  }) {
    if (getInstHystory != null) {
      return getInstHystory(joinId, schemeNO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInstHystory value) getInstHystory,
    required TResult Function(ResetDataEvent value) resetDataEvent,
  }) {
    return getInstHystory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInstHystory value)? getInstHystory,
    TResult? Function(ResetDataEvent value)? resetDataEvent,
  }) {
    return getInstHystory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInstHystory value)? getInstHystory,
    TResult Function(ResetDataEvent value)? resetDataEvent,
    required TResult orElse(),
  }) {
    if (getInstHystory != null) {
      return getInstHystory(this);
    }
    return orElse();
  }
}

abstract class GetInstHystory implements InstalmenthystoryEvent {
  const factory GetInstHystory(
      {required final String joinId,
      required final String schemeNO}) = _$GetInstHystoryImpl;

  String get joinId;
  String get schemeNO;
  @JsonKey(ignore: true)
  _$$GetInstHystoryImplCopyWith<_$GetInstHystoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetDataEventImplCopyWith<$Res> {
  factory _$$ResetDataEventImplCopyWith(_$ResetDataEventImpl value,
          $Res Function(_$ResetDataEventImpl) then) =
      __$$ResetDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetDataEventImplCopyWithImpl<$Res>
    extends _$InstalmenthystoryEventCopyWithImpl<$Res, _$ResetDataEventImpl>
    implements _$$ResetDataEventImplCopyWith<$Res> {
  __$$ResetDataEventImplCopyWithImpl(
      _$ResetDataEventImpl _value, $Res Function(_$ResetDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetDataEventImpl implements ResetDataEvent {
  const _$ResetDataEventImpl();

  @override
  String toString() {
    return 'InstalmenthystoryEvent.resetDataEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String joinId, String schemeNO) getInstHystory,
    required TResult Function() resetDataEvent,
  }) {
    return resetDataEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String joinId, String schemeNO)? getInstHystory,
    TResult? Function()? resetDataEvent,
  }) {
    return resetDataEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String joinId, String schemeNO)? getInstHystory,
    TResult Function()? resetDataEvent,
    required TResult orElse(),
  }) {
    if (resetDataEvent != null) {
      return resetDataEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInstHystory value) getInstHystory,
    required TResult Function(ResetDataEvent value) resetDataEvent,
  }) {
    return resetDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInstHystory value)? getInstHystory,
    TResult? Function(ResetDataEvent value)? resetDataEvent,
  }) {
    return resetDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInstHystory value)? getInstHystory,
    TResult Function(ResetDataEvent value)? resetDataEvent,
    required TResult orElse(),
  }) {
    if (resetDataEvent != null) {
      return resetDataEvent(this);
    }
    return orElse();
  }
}

abstract class ResetDataEvent implements InstalmenthystoryEvent {
  const factory ResetDataEvent() = _$ResetDataEventImpl;
}

/// @nodoc
mixin _$InstalmenthystoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InstalmentHystoryModel>? insthystry)
        getinstalmentHystoryState,
    required TResult Function() insthystryFailed,
    required TResult Function() hystoryLoadigState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult? Function()? insthystryFailed,
    TResult? Function()? hystoryLoadigState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult Function()? insthystryFailed,
    TResult Function()? hystoryLoadigState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetinstalmentHystoryState value)
        getinstalmentHystoryState,
    required TResult Function(InsthystryFailed value) insthystryFailed,
    required TResult Function(HystoryLoadigState value) hystoryLoadigState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult? Function(InsthystryFailed value)? insthystryFailed,
    TResult? Function(HystoryLoadigState value)? hystoryLoadigState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult Function(InsthystryFailed value)? insthystryFailed,
    TResult Function(HystoryLoadigState value)? hystoryLoadigState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstalmenthystoryStateCopyWith<$Res> {
  factory $InstalmenthystoryStateCopyWith(InstalmenthystoryState value,
          $Res Function(InstalmenthystoryState) then) =
      _$InstalmenthystoryStateCopyWithImpl<$Res, InstalmenthystoryState>;
}

/// @nodoc
class _$InstalmenthystoryStateCopyWithImpl<$Res,
        $Val extends InstalmenthystoryState>
    implements $InstalmenthystoryStateCopyWith<$Res> {
  _$InstalmenthystoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetinstalmentHystoryStateImplCopyWith<$Res> {
  factory _$$GetinstalmentHystoryStateImplCopyWith(
          _$GetinstalmentHystoryStateImpl value,
          $Res Function(_$GetinstalmentHystoryStateImpl) then) =
      __$$GetinstalmentHystoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InstalmentHystoryModel>? insthystry});
}

/// @nodoc
class __$$GetinstalmentHystoryStateImplCopyWithImpl<$Res>
    extends _$InstalmenthystoryStateCopyWithImpl<$Res,
        _$GetinstalmentHystoryStateImpl>
    implements _$$GetinstalmentHystoryStateImplCopyWith<$Res> {
  __$$GetinstalmentHystoryStateImplCopyWithImpl(
      _$GetinstalmentHystoryStateImpl _value,
      $Res Function(_$GetinstalmentHystoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insthystry = freezed,
  }) {
    return _then(_$GetinstalmentHystoryStateImpl(
      insthystry: freezed == insthystry
          ? _value._insthystry
          : insthystry // ignore: cast_nullable_to_non_nullable
              as List<InstalmentHystoryModel>?,
    ));
  }
}

/// @nodoc

class _$GetinstalmentHystoryStateImpl implements GetinstalmentHystoryState {
  const _$GetinstalmentHystoryStateImpl(
      {required final List<InstalmentHystoryModel>? insthystry})
      : _insthystry = insthystry;

  final List<InstalmentHystoryModel>? _insthystry;
  @override
  List<InstalmentHystoryModel>? get insthystry {
    final value = _insthystry;
    if (value == null) return null;
    if (_insthystry is EqualUnmodifiableListView) return _insthystry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InstalmenthystoryState.getinstalmentHystoryState(insthystry: $insthystry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetinstalmentHystoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._insthystry, _insthystry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_insthystry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetinstalmentHystoryStateImplCopyWith<_$GetinstalmentHystoryStateImpl>
      get copyWith => __$$GetinstalmentHystoryStateImplCopyWithImpl<
          _$GetinstalmentHystoryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InstalmentHystoryModel>? insthystry)
        getinstalmentHystoryState,
    required TResult Function() insthystryFailed,
    required TResult Function() hystoryLoadigState,
  }) {
    return getinstalmentHystoryState(insthystry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult? Function()? insthystryFailed,
    TResult? Function()? hystoryLoadigState,
  }) {
    return getinstalmentHystoryState?.call(insthystry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult Function()? insthystryFailed,
    TResult Function()? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (getinstalmentHystoryState != null) {
      return getinstalmentHystoryState(insthystry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetinstalmentHystoryState value)
        getinstalmentHystoryState,
    required TResult Function(InsthystryFailed value) insthystryFailed,
    required TResult Function(HystoryLoadigState value) hystoryLoadigState,
  }) {
    return getinstalmentHystoryState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult? Function(InsthystryFailed value)? insthystryFailed,
    TResult? Function(HystoryLoadigState value)? hystoryLoadigState,
  }) {
    return getinstalmentHystoryState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult Function(InsthystryFailed value)? insthystryFailed,
    TResult Function(HystoryLoadigState value)? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (getinstalmentHystoryState != null) {
      return getinstalmentHystoryState(this);
    }
    return orElse();
  }
}

abstract class GetinstalmentHystoryState implements InstalmenthystoryState {
  const factory GetinstalmentHystoryState(
          {required final List<InstalmentHystoryModel>? insthystry}) =
      _$GetinstalmentHystoryStateImpl;

  List<InstalmentHystoryModel>? get insthystry;
  @JsonKey(ignore: true)
  _$$GetinstalmentHystoryStateImplCopyWith<_$GetinstalmentHystoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsthystryFailedImplCopyWith<$Res> {
  factory _$$InsthystryFailedImplCopyWith(_$InsthystryFailedImpl value,
          $Res Function(_$InsthystryFailedImpl) then) =
      __$$InsthystryFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsthystryFailedImplCopyWithImpl<$Res>
    extends _$InstalmenthystoryStateCopyWithImpl<$Res, _$InsthystryFailedImpl>
    implements _$$InsthystryFailedImplCopyWith<$Res> {
  __$$InsthystryFailedImplCopyWithImpl(_$InsthystryFailedImpl _value,
      $Res Function(_$InsthystryFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsthystryFailedImpl implements InsthystryFailed {
  const _$InsthystryFailedImpl();

  @override
  String toString() {
    return 'InstalmenthystoryState.insthystryFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InsthystryFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InstalmentHystoryModel>? insthystry)
        getinstalmentHystoryState,
    required TResult Function() insthystryFailed,
    required TResult Function() hystoryLoadigState,
  }) {
    return insthystryFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult? Function()? insthystryFailed,
    TResult? Function()? hystoryLoadigState,
  }) {
    return insthystryFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult Function()? insthystryFailed,
    TResult Function()? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (insthystryFailed != null) {
      return insthystryFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetinstalmentHystoryState value)
        getinstalmentHystoryState,
    required TResult Function(InsthystryFailed value) insthystryFailed,
    required TResult Function(HystoryLoadigState value) hystoryLoadigState,
  }) {
    return insthystryFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult? Function(InsthystryFailed value)? insthystryFailed,
    TResult? Function(HystoryLoadigState value)? hystoryLoadigState,
  }) {
    return insthystryFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult Function(InsthystryFailed value)? insthystryFailed,
    TResult Function(HystoryLoadigState value)? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (insthystryFailed != null) {
      return insthystryFailed(this);
    }
    return orElse();
  }
}

abstract class InsthystryFailed implements InstalmenthystoryState {
  const factory InsthystryFailed() = _$InsthystryFailedImpl;
}

/// @nodoc
abstract class _$$HystoryLoadigStateImplCopyWith<$Res> {
  factory _$$HystoryLoadigStateImplCopyWith(_$HystoryLoadigStateImpl value,
          $Res Function(_$HystoryLoadigStateImpl) then) =
      __$$HystoryLoadigStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HystoryLoadigStateImplCopyWithImpl<$Res>
    extends _$InstalmenthystoryStateCopyWithImpl<$Res, _$HystoryLoadigStateImpl>
    implements _$$HystoryLoadigStateImplCopyWith<$Res> {
  __$$HystoryLoadigStateImplCopyWithImpl(_$HystoryLoadigStateImpl _value,
      $Res Function(_$HystoryLoadigStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HystoryLoadigStateImpl implements HystoryLoadigState {
  const _$HystoryLoadigStateImpl();

  @override
  String toString() {
    return 'InstalmenthystoryState.hystoryLoadigState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HystoryLoadigStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InstalmentHystoryModel>? insthystry)
        getinstalmentHystoryState,
    required TResult Function() insthystryFailed,
    required TResult Function() hystoryLoadigState,
  }) {
    return hystoryLoadigState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult? Function()? insthystryFailed,
    TResult? Function()? hystoryLoadigState,
  }) {
    return hystoryLoadigState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InstalmentHystoryModel>? insthystry)?
        getinstalmentHystoryState,
    TResult Function()? insthystryFailed,
    TResult Function()? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (hystoryLoadigState != null) {
      return hystoryLoadigState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetinstalmentHystoryState value)
        getinstalmentHystoryState,
    required TResult Function(InsthystryFailed value) insthystryFailed,
    required TResult Function(HystoryLoadigState value) hystoryLoadigState,
  }) {
    return hystoryLoadigState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult? Function(InsthystryFailed value)? insthystryFailed,
    TResult? Function(HystoryLoadigState value)? hystoryLoadigState,
  }) {
    return hystoryLoadigState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetinstalmentHystoryState value)?
        getinstalmentHystoryState,
    TResult Function(InsthystryFailed value)? insthystryFailed,
    TResult Function(HystoryLoadigState value)? hystoryLoadigState,
    required TResult orElse(),
  }) {
    if (hystoryLoadigState != null) {
      return hystoryLoadigState(this);
    }
    return orElse();
  }
}

abstract class HystoryLoadigState implements InstalmenthystoryState {
  const factory HystoryLoadigState() = _$HystoryLoadigStateImpl;
}
