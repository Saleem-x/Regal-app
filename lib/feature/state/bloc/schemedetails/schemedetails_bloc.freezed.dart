// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schemedetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchemedetailsEvent {
  String get cusid => throw _privateConstructorUsedError;
  String get schmId => throw _privateConstructorUsedError;
  String get datakeys => throw _privateConstructorUsedError;
  CustomerSchemeModel get scheme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)
        getschemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)?
        getschemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)?
        getschemedetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetschemedetailsEvent value) getschemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetschemedetailsEvent value)? getschemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetschemedetailsEvent value)? getschemedetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemedetailsEventCopyWith<SchemedetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemedetailsEventCopyWith<$Res> {
  factory $SchemedetailsEventCopyWith(
          SchemedetailsEvent value, $Res Function(SchemedetailsEvent) then) =
      _$SchemedetailsEventCopyWithImpl<$Res, SchemedetailsEvent>;
  @useResult
  $Res call(
      {String cusid,
      String schmId,
      String datakeys,
      CustomerSchemeModel scheme});
}

/// @nodoc
class _$SchemedetailsEventCopyWithImpl<$Res, $Val extends SchemedetailsEvent>
    implements $SchemedetailsEventCopyWith<$Res> {
  _$SchemedetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusid = null,
    Object? schmId = null,
    Object? datakeys = null,
    Object? scheme = null,
  }) {
    return _then(_value.copyWith(
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
      schmId: null == schmId
          ? _value.schmId
          : schmId // ignore: cast_nullable_to_non_nullable
              as String,
      datakeys: null == datakeys
          ? _value.datakeys
          : datakeys // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as CustomerSchemeModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetschemedetailsEventImplCopyWith<$Res>
    implements $SchemedetailsEventCopyWith<$Res> {
  factory _$$GetschemedetailsEventImplCopyWith(
          _$GetschemedetailsEventImpl value,
          $Res Function(_$GetschemedetailsEventImpl) then) =
      __$$GetschemedetailsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cusid,
      String schmId,
      String datakeys,
      CustomerSchemeModel scheme});
}

/// @nodoc
class __$$GetschemedetailsEventImplCopyWithImpl<$Res>
    extends _$SchemedetailsEventCopyWithImpl<$Res, _$GetschemedetailsEventImpl>
    implements _$$GetschemedetailsEventImplCopyWith<$Res> {
  __$$GetschemedetailsEventImplCopyWithImpl(_$GetschemedetailsEventImpl _value,
      $Res Function(_$GetschemedetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusid = null,
    Object? schmId = null,
    Object? datakeys = null,
    Object? scheme = null,
  }) {
    return _then(_$GetschemedetailsEventImpl(
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
      schmId: null == schmId
          ? _value.schmId
          : schmId // ignore: cast_nullable_to_non_nullable
              as String,
      datakeys: null == datakeys
          ? _value.datakeys
          : datakeys // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as CustomerSchemeModel,
    ));
  }
}

/// @nodoc

class _$GetschemedetailsEventImpl implements GetschemedetailsEvent {
  const _$GetschemedetailsEventImpl(
      {required this.cusid,
      required this.schmId,
      required this.datakeys,
      required this.scheme});

  @override
  final String cusid;
  @override
  final String schmId;
  @override
  final String datakeys;
  @override
  final CustomerSchemeModel scheme;

  @override
  String toString() {
    return 'SchemedetailsEvent.getschemedetails(cusid: $cusid, schmId: $schmId, datakeys: $datakeys, scheme: $scheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetschemedetailsEventImpl &&
            (identical(other.cusid, cusid) || other.cusid == cusid) &&
            (identical(other.schmId, schmId) || other.schmId == schmId) &&
            (identical(other.datakeys, datakeys) ||
                other.datakeys == datakeys) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusid, schmId, datakeys, scheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetschemedetailsEventImplCopyWith<_$GetschemedetailsEventImpl>
      get copyWith => __$$GetschemedetailsEventImplCopyWithImpl<
          _$GetschemedetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)
        getschemedetails,
  }) {
    return getschemedetails(cusid, schmId, datakeys, scheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)?
        getschemedetails,
  }) {
    return getschemedetails?.call(cusid, schmId, datakeys, scheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusid, String schmId, String datakeys,
            CustomerSchemeModel scheme)?
        getschemedetails,
    required TResult orElse(),
  }) {
    if (getschemedetails != null) {
      return getschemedetails(cusid, schmId, datakeys, scheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetschemedetailsEvent value) getschemedetails,
  }) {
    return getschemedetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetschemedetailsEvent value)? getschemedetails,
  }) {
    return getschemedetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetschemedetailsEvent value)? getschemedetails,
    required TResult orElse(),
  }) {
    if (getschemedetails != null) {
      return getschemedetails(this);
    }
    return orElse();
  }
}

abstract class GetschemedetailsEvent implements SchemedetailsEvent {
  const factory GetschemedetailsEvent(
      {required final String cusid,
      required final String schmId,
      required final String datakeys,
      required final CustomerSchemeModel scheme}) = _$GetschemedetailsEventImpl;

  @override
  String get cusid;
  @override
  String get schmId;
  @override
  String get datakeys;
  @override
  CustomerSchemeModel get scheme;
  @override
  @JsonKey(ignore: true)
  _$$GetschemedetailsEventImplCopyWith<_$GetschemedetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchemedetailsState {
  SchemeDetailsModel? get schemedetail => throw _privateConstructorUsedError;
  CustomerSchemeModel? get scheme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)
        schemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)?
        schemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)?
        schemedetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Schemedetailsstate value) schemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Schemedetailsstate value)? schemedetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Schemedetailsstate value)? schemedetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemedetailsStateCopyWith<SchemedetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemedetailsStateCopyWith<$Res> {
  factory $SchemedetailsStateCopyWith(
          SchemedetailsState value, $Res Function(SchemedetailsState) then) =
      _$SchemedetailsStateCopyWithImpl<$Res, SchemedetailsState>;
  @useResult
  $Res call({SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme});
}

/// @nodoc
class _$SchemedetailsStateCopyWithImpl<$Res, $Val extends SchemedetailsState>
    implements $SchemedetailsStateCopyWith<$Res> {
  _$SchemedetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemedetail = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_value.copyWith(
      schemedetail: freezed == schemedetail
          ? _value.schemedetail
          : schemedetail // ignore: cast_nullable_to_non_nullable
              as SchemeDetailsModel?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as CustomerSchemeModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemedetailsstateImplCopyWith<$Res>
    implements $SchemedetailsStateCopyWith<$Res> {
  factory _$$SchemedetailsstateImplCopyWith(_$SchemedetailsstateImpl value,
          $Res Function(_$SchemedetailsstateImpl) then) =
      __$$SchemedetailsstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme});
}

/// @nodoc
class __$$SchemedetailsstateImplCopyWithImpl<$Res>
    extends _$SchemedetailsStateCopyWithImpl<$Res, _$SchemedetailsstateImpl>
    implements _$$SchemedetailsstateImplCopyWith<$Res> {
  __$$SchemedetailsstateImplCopyWithImpl(_$SchemedetailsstateImpl _value,
      $Res Function(_$SchemedetailsstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemedetail = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_$SchemedetailsstateImpl(
      schemedetail: freezed == schemedetail
          ? _value.schemedetail
          : schemedetail // ignore: cast_nullable_to_non_nullable
              as SchemeDetailsModel?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as CustomerSchemeModel?,
    ));
  }
}

/// @nodoc

class _$SchemedetailsstateImpl implements Schemedetailsstate {
  const _$SchemedetailsstateImpl(
      {required this.schemedetail, required this.scheme});

  @override
  final SchemeDetailsModel? schemedetail;
  @override
  final CustomerSchemeModel? scheme;

  @override
  String toString() {
    return 'SchemedetailsState.schemedetails(schemedetail: $schemedetail, scheme: $scheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemedetailsstateImpl &&
            (identical(other.schemedetail, schemedetail) ||
                other.schemedetail == schemedetail) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schemedetail, scheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemedetailsstateImplCopyWith<_$SchemedetailsstateImpl> get copyWith =>
      __$$SchemedetailsstateImplCopyWithImpl<_$SchemedetailsstateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)
        schemedetails,
  }) {
    return schemedetails(schemedetail, scheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)?
        schemedetails,
  }) {
    return schemedetails?.call(schemedetail, scheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SchemeDetailsModel? schemedetail, CustomerSchemeModel? scheme)?
        schemedetails,
    required TResult orElse(),
  }) {
    if (schemedetails != null) {
      return schemedetails(schemedetail, scheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Schemedetailsstate value) schemedetails,
  }) {
    return schemedetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Schemedetailsstate value)? schemedetails,
  }) {
    return schemedetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Schemedetailsstate value)? schemedetails,
    required TResult orElse(),
  }) {
    if (schemedetails != null) {
      return schemedetails(this);
    }
    return orElse();
  }
}

abstract class Schemedetailsstate implements SchemedetailsState {
  const factory Schemedetailsstate(
      {required final SchemeDetailsModel? schemedetail,
      required final CustomerSchemeModel? scheme}) = _$SchemedetailsstateImpl;

  @override
  SchemeDetailsModel? get schemedetail;
  @override
  CustomerSchemeModel? get scheme;
  @override
  @JsonKey(ignore: true)
  _$$SchemedetailsstateImplCopyWith<_$SchemedetailsstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
