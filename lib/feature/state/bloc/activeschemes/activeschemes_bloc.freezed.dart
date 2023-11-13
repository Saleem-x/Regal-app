// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activeschemes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveschemesEvent {
  String get datakey => throw _privateConstructorUsedError;
  String get cusid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey, String cusid) getActiveSchemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey, String cusid)? getActiveSchemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey, String cusid)? getActiveSchemes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActiveSchemes value) getActiveSchemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActiveSchemes value)? getActiveSchemes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActiveSchemes value)? getActiveSchemes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveschemesEventCopyWith<ActiveschemesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveschemesEventCopyWith<$Res> {
  factory $ActiveschemesEventCopyWith(
          ActiveschemesEvent value, $Res Function(ActiveschemesEvent) then) =
      _$ActiveschemesEventCopyWithImpl<$Res, ActiveschemesEvent>;
  @useResult
  $Res call({String datakey, String cusid});
}

/// @nodoc
class _$ActiveschemesEventCopyWithImpl<$Res, $Val extends ActiveschemesEvent>
    implements $ActiveschemesEventCopyWith<$Res> {
  _$ActiveschemesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
    Object? cusid = null,
  }) {
    return _then(_value.copyWith(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetActiveSchemesImplCopyWith<$Res>
    implements $ActiveschemesEventCopyWith<$Res> {
  factory _$$GetActiveSchemesImplCopyWith(_$GetActiveSchemesImpl value,
          $Res Function(_$GetActiveSchemesImpl) then) =
      __$$GetActiveSchemesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datakey, String cusid});
}

/// @nodoc
class __$$GetActiveSchemesImplCopyWithImpl<$Res>
    extends _$ActiveschemesEventCopyWithImpl<$Res, _$GetActiveSchemesImpl>
    implements _$$GetActiveSchemesImplCopyWith<$Res> {
  __$$GetActiveSchemesImplCopyWithImpl(_$GetActiveSchemesImpl _value,
      $Res Function(_$GetActiveSchemesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
    Object? cusid = null,
  }) {
    return _then(_$GetActiveSchemesImpl(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActiveSchemesImpl implements GetActiveSchemes {
  const _$GetActiveSchemesImpl({required this.datakey, required this.cusid});

  @override
  final String datakey;
  @override
  final String cusid;

  @override
  String toString() {
    return 'ActiveschemesEvent.getActiveSchemes(datakey: $datakey, cusid: $cusid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActiveSchemesImpl &&
            (identical(other.datakey, datakey) || other.datakey == datakey) &&
            (identical(other.cusid, cusid) || other.cusid == cusid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datakey, cusid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActiveSchemesImplCopyWith<_$GetActiveSchemesImpl> get copyWith =>
      __$$GetActiveSchemesImplCopyWithImpl<_$GetActiveSchemesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey, String cusid) getActiveSchemes,
  }) {
    return getActiveSchemes(datakey, cusid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey, String cusid)? getActiveSchemes,
  }) {
    return getActiveSchemes?.call(datakey, cusid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey, String cusid)? getActiveSchemes,
    required TResult orElse(),
  }) {
    if (getActiveSchemes != null) {
      return getActiveSchemes(datakey, cusid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetActiveSchemes value) getActiveSchemes,
  }) {
    return getActiveSchemes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetActiveSchemes value)? getActiveSchemes,
  }) {
    return getActiveSchemes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetActiveSchemes value)? getActiveSchemes,
    required TResult orElse(),
  }) {
    if (getActiveSchemes != null) {
      return getActiveSchemes(this);
    }
    return orElse();
  }
}

abstract class GetActiveSchemes implements ActiveschemesEvent {
  const factory GetActiveSchemes(
      {required final String datakey,
      required final String cusid}) = _$GetActiveSchemesImpl;

  @override
  String get datakey;
  @override
  String get cusid;
  @override
  @JsonKey(ignore: true)
  _$$GetActiveSchemesImplCopyWith<_$GetActiveSchemesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveschemesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerSchemeModel>? schemes)
        activeAchemesState,
    required TResult Function() failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult? Function()? failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiiveAchemesState value) activeAchemesState,
    required TResult Function(Failedstate value) failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActiiveAchemesState value)? activeAchemesState,
    TResult? Function(Failedstate value)? failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiiveAchemesState value)? activeAchemesState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveschemesStateCopyWith<$Res> {
  factory $ActiveschemesStateCopyWith(
          ActiveschemesState value, $Res Function(ActiveschemesState) then) =
      _$ActiveschemesStateCopyWithImpl<$Res, ActiveschemesState>;
}

/// @nodoc
class _$ActiveschemesStateCopyWithImpl<$Res, $Val extends ActiveschemesState>
    implements $ActiveschemesStateCopyWith<$Res> {
  _$ActiveschemesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActiiveAchemesStateImplCopyWith<$Res> {
  factory _$$ActiiveAchemesStateImplCopyWith(_$ActiiveAchemesStateImpl value,
          $Res Function(_$ActiiveAchemesStateImpl) then) =
      __$$ActiiveAchemesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerSchemeModel>? schemes});
}

/// @nodoc
class __$$ActiiveAchemesStateImplCopyWithImpl<$Res>
    extends _$ActiveschemesStateCopyWithImpl<$Res, _$ActiiveAchemesStateImpl>
    implements _$$ActiiveAchemesStateImplCopyWith<$Res> {
  __$$ActiiveAchemesStateImplCopyWithImpl(_$ActiiveAchemesStateImpl _value,
      $Res Function(_$ActiiveAchemesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemes = freezed,
  }) {
    return _then(_$ActiiveAchemesStateImpl(
      schemes: freezed == schemes
          ? _value._schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<CustomerSchemeModel>?,
    ));
  }
}

/// @nodoc

class _$ActiiveAchemesStateImpl implements ActiiveAchemesState {
  const _$ActiiveAchemesStateImpl(
      {required final List<CustomerSchemeModel>? schemes})
      : _schemes = schemes;

  final List<CustomerSchemeModel>? _schemes;
  @override
  List<CustomerSchemeModel>? get schemes {
    final value = _schemes;
    if (value == null) return null;
    if (_schemes is EqualUnmodifiableListView) return _schemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActiveschemesState.activeAchemesState(schemes: $schemes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiiveAchemesStateImpl &&
            const DeepCollectionEquality().equals(other._schemes, _schemes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schemes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiiveAchemesStateImplCopyWith<_$ActiiveAchemesStateImpl> get copyWith =>
      __$$ActiiveAchemesStateImplCopyWithImpl<_$ActiiveAchemesStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerSchemeModel>? schemes)
        activeAchemesState,
    required TResult Function() failedstate,
  }) {
    return activeAchemesState(schemes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult? Function()? failedstate,
  }) {
    return activeAchemesState?.call(schemes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if (activeAchemesState != null) {
      return activeAchemesState(schemes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiiveAchemesState value) activeAchemesState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return activeAchemesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActiiveAchemesState value)? activeAchemesState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return activeAchemesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiiveAchemesState value)? activeAchemesState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if (activeAchemesState != null) {
      return activeAchemesState(this);
    }
    return orElse();
  }
}

abstract class ActiiveAchemesState implements ActiveschemesState {
  const factory ActiiveAchemesState(
          {required final List<CustomerSchemeModel>? schemes}) =
      _$ActiiveAchemesStateImpl;

  List<CustomerSchemeModel>? get schemes;
  @JsonKey(ignore: true)
  _$$ActiiveAchemesStateImplCopyWith<_$ActiiveAchemesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedstateImplCopyWith<$Res> {
  factory _$$FailedstateImplCopyWith(
          _$FailedstateImpl value, $Res Function(_$FailedstateImpl) then) =
      __$$FailedstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedstateImplCopyWithImpl<$Res>
    extends _$ActiveschemesStateCopyWithImpl<$Res, _$FailedstateImpl>
    implements _$$FailedstateImplCopyWith<$Res> {
  __$$FailedstateImplCopyWithImpl(
      _$FailedstateImpl _value, $Res Function(_$FailedstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedstateImpl implements Failedstate {
  const _$FailedstateImpl();

  @override
  String toString() {
    return 'ActiveschemesState.failedstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerSchemeModel>? schemes)
        activeAchemesState,
    required TResult Function() failedstate,
  }) {
    return failedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult? Function()? failedstate,
  }) {
    return failedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerSchemeModel>? schemes)? activeAchemesState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActiiveAchemesState value) activeAchemesState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return failedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActiiveAchemesState value)? activeAchemesState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return failedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActiiveAchemesState value)? activeAchemesState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate(this);
    }
    return orElse();
  }
}

abstract class Failedstate implements ActiveschemesState {
  const factory Failedstate() = _$FailedstateImpl;
}
