// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newschemcreatehome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewschemcreatehomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeInModel newschemes)
        createNewSchemeEvent,
    required TResult Function() newschemeADDLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult? Function()? newschemeADDLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult Function()? newschemeADDLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewSchemeHomeEvent value)
        createNewSchemeEvent,
    required TResult Function(NewschemeADDLoadingEvent value)
        newschemeADDLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult? Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewschemcreatehomeEventCopyWith<$Res> {
  factory $NewschemcreatehomeEventCopyWith(NewschemcreatehomeEvent value,
          $Res Function(NewschemcreatehomeEvent) then) =
      _$NewschemcreatehomeEventCopyWithImpl<$Res, NewschemcreatehomeEvent>;
}

/// @nodoc
class _$NewschemcreatehomeEventCopyWithImpl<$Res,
        $Val extends NewschemcreatehomeEvent>
    implements $NewschemcreatehomeEventCopyWith<$Res> {
  _$NewschemcreatehomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateNewSchemeHomeEventImplCopyWith<$Res> {
  factory _$$CreateNewSchemeHomeEventImplCopyWith(
          _$CreateNewSchemeHomeEventImpl value,
          $Res Function(_$CreateNewSchemeHomeEventImpl) then) =
      __$$CreateNewSchemeHomeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewSchemeHomeInModel newschemes});
}

/// @nodoc
class __$$CreateNewSchemeHomeEventImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeEventCopyWithImpl<$Res,
        _$CreateNewSchemeHomeEventImpl>
    implements _$$CreateNewSchemeHomeEventImplCopyWith<$Res> {
  __$$CreateNewSchemeHomeEventImplCopyWithImpl(
      _$CreateNewSchemeHomeEventImpl _value,
      $Res Function(_$CreateNewSchemeHomeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newschemes = null,
  }) {
    return _then(_$CreateNewSchemeHomeEventImpl(
      newschemes: null == newschemes
          ? _value.newschemes
          : newschemes // ignore: cast_nullable_to_non_nullable
              as NewSchemeHomeInModel,
    ));
  }
}

/// @nodoc

class _$CreateNewSchemeHomeEventImpl implements CreateNewSchemeHomeEvent {
  const _$CreateNewSchemeHomeEventImpl({required this.newschemes});

  @override
  final NewSchemeHomeInModel newschemes;

  @override
  String toString() {
    return 'NewschemcreatehomeEvent.createNewSchemeEvent(newschemes: $newschemes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewSchemeHomeEventImpl &&
            (identical(other.newschemes, newschemes) ||
                other.newschemes == newschemes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newschemes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewSchemeHomeEventImplCopyWith<_$CreateNewSchemeHomeEventImpl>
      get copyWith => __$$CreateNewSchemeHomeEventImplCopyWithImpl<
          _$CreateNewSchemeHomeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeInModel newschemes)
        createNewSchemeEvent,
    required TResult Function() newschemeADDLoading,
  }) {
    return createNewSchemeEvent(newschemes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult? Function()? newschemeADDLoading,
  }) {
    return createNewSchemeEvent?.call(newschemes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult Function()? newschemeADDLoading,
    required TResult orElse(),
  }) {
    if (createNewSchemeEvent != null) {
      return createNewSchemeEvent(newschemes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewSchemeHomeEvent value)
        createNewSchemeEvent,
    required TResult Function(NewschemeADDLoadingEvent value)
        newschemeADDLoading,
  }) {
    return createNewSchemeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult? Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
  }) {
    return createNewSchemeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
    required TResult orElse(),
  }) {
    if (createNewSchemeEvent != null) {
      return createNewSchemeEvent(this);
    }
    return orElse();
  }
}

abstract class CreateNewSchemeHomeEvent implements NewschemcreatehomeEvent {
  const factory CreateNewSchemeHomeEvent(
          {required final NewSchemeHomeInModel newschemes}) =
      _$CreateNewSchemeHomeEventImpl;

  NewSchemeHomeInModel get newschemes;
  @JsonKey(ignore: true)
  _$$CreateNewSchemeHomeEventImplCopyWith<_$CreateNewSchemeHomeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewschemeADDLoadingEventImplCopyWith<$Res> {
  factory _$$NewschemeADDLoadingEventImplCopyWith(
          _$NewschemeADDLoadingEventImpl value,
          $Res Function(_$NewschemeADDLoadingEventImpl) then) =
      __$$NewschemeADDLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewschemeADDLoadingEventImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeEventCopyWithImpl<$Res,
        _$NewschemeADDLoadingEventImpl>
    implements _$$NewschemeADDLoadingEventImplCopyWith<$Res> {
  __$$NewschemeADDLoadingEventImplCopyWithImpl(
      _$NewschemeADDLoadingEventImpl _value,
      $Res Function(_$NewschemeADDLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewschemeADDLoadingEventImpl implements NewschemeADDLoadingEvent {
  const _$NewschemeADDLoadingEventImpl();

  @override
  String toString() {
    return 'NewschemcreatehomeEvent.newschemeADDLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewschemeADDLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeInModel newschemes)
        createNewSchemeEvent,
    required TResult Function() newschemeADDLoading,
  }) {
    return newschemeADDLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult? Function()? newschemeADDLoading,
  }) {
    return newschemeADDLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeInModel newschemes)? createNewSchemeEvent,
    TResult Function()? newschemeADDLoading,
    required TResult orElse(),
  }) {
    if (newschemeADDLoading != null) {
      return newschemeADDLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewSchemeHomeEvent value)
        createNewSchemeEvent,
    required TResult Function(NewschemeADDLoadingEvent value)
        newschemeADDLoading,
  }) {
    return newschemeADDLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult? Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
  }) {
    return newschemeADDLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewSchemeHomeEvent value)? createNewSchemeEvent,
    TResult Function(NewschemeADDLoadingEvent value)? newschemeADDLoading,
    required TResult orElse(),
  }) {
    if (newschemeADDLoading != null) {
      return newschemeADDLoading(this);
    }
    return orElse();
  }
}

abstract class NewschemeADDLoadingEvent implements NewschemcreatehomeEvent {
  const factory NewschemeADDLoadingEvent() = _$NewschemeADDLoadingEventImpl;
}

/// @nodoc
mixin _$NewschemcreatehomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeOutModel newschemresp)
        newSchemeHomeCreatSuccessState,
    required TResult Function(String response) newSchemeHomeCreatfailedState,
    required TResult Function() newschcmehomeloadingstate,
    required TResult Function() newSchemInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(String response)? newSchemeHomeCreatfailedState,
    TResult? Function()? newschcmehomeloadingstate,
    TResult? Function()? newSchemInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult Function(String response)? newSchemeHomeCreatfailedState,
    TResult Function()? newschcmehomeloadingstate,
    TResult Function()? newSchemInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewSchemeHomeCreatSuccessState value)
        newSchemeHomeCreatSuccessState,
    required TResult Function(NewSchemeHomeCreatfailedState value)
        newSchemeHomeCreatfailedState,
    required TResult Function(Newschcmehomeloadingstate value)
        newschcmehomeloadingstate,
    required TResult Function(_newSchemInitial value) newSchemInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult? Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult? Function(_newSchemInitial value)? newSchemInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult Function(_newSchemInitial value)? newSchemInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewschemcreatehomeStateCopyWith<$Res> {
  factory $NewschemcreatehomeStateCopyWith(NewschemcreatehomeState value,
          $Res Function(NewschemcreatehomeState) then) =
      _$NewschemcreatehomeStateCopyWithImpl<$Res, NewschemcreatehomeState>;
}

/// @nodoc
class _$NewschemcreatehomeStateCopyWithImpl<$Res,
        $Val extends NewschemcreatehomeState>
    implements $NewschemcreatehomeStateCopyWith<$Res> {
  _$NewschemcreatehomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewSchemeHomeCreatSuccessStateImplCopyWith<$Res> {
  factory _$$NewSchemeHomeCreatSuccessStateImplCopyWith(
          _$NewSchemeHomeCreatSuccessStateImpl value,
          $Res Function(_$NewSchemeHomeCreatSuccessStateImpl) then) =
      __$$NewSchemeHomeCreatSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewSchemeHomeOutModel newschemresp});
}

/// @nodoc
class __$$NewSchemeHomeCreatSuccessStateImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeStateCopyWithImpl<$Res,
        _$NewSchemeHomeCreatSuccessStateImpl>
    implements _$$NewSchemeHomeCreatSuccessStateImplCopyWith<$Res> {
  __$$NewSchemeHomeCreatSuccessStateImplCopyWithImpl(
      _$NewSchemeHomeCreatSuccessStateImpl _value,
      $Res Function(_$NewSchemeHomeCreatSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newschemresp = null,
  }) {
    return _then(_$NewSchemeHomeCreatSuccessStateImpl(
      newschemresp: null == newschemresp
          ? _value.newschemresp
          : newschemresp // ignore: cast_nullable_to_non_nullable
              as NewSchemeHomeOutModel,
    ));
  }
}

/// @nodoc

class _$NewSchemeHomeCreatSuccessStateImpl
    implements NewSchemeHomeCreatSuccessState {
  const _$NewSchemeHomeCreatSuccessStateImpl({required this.newschemresp});

  @override
  final NewSchemeHomeOutModel newschemresp;

  @override
  String toString() {
    return 'NewschemcreatehomeState.newSchemeHomeCreatSuccessState(newschemresp: $newschemresp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSchemeHomeCreatSuccessStateImpl &&
            (identical(other.newschemresp, newschemresp) ||
                other.newschemresp == newschemresp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newschemresp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSchemeHomeCreatSuccessStateImplCopyWith<
          _$NewSchemeHomeCreatSuccessStateImpl>
      get copyWith => __$$NewSchemeHomeCreatSuccessStateImplCopyWithImpl<
          _$NewSchemeHomeCreatSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeOutModel newschemresp)
        newSchemeHomeCreatSuccessState,
    required TResult Function(String response) newSchemeHomeCreatfailedState,
    required TResult Function() newschcmehomeloadingstate,
    required TResult Function() newSchemInitial,
  }) {
    return newSchemeHomeCreatSuccessState(newschemresp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(String response)? newSchemeHomeCreatfailedState,
    TResult? Function()? newschcmehomeloadingstate,
    TResult? Function()? newSchemInitial,
  }) {
    return newSchemeHomeCreatSuccessState?.call(newschemresp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult Function(String response)? newSchemeHomeCreatfailedState,
    TResult Function()? newschcmehomeloadingstate,
    TResult Function()? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemeHomeCreatSuccessState != null) {
      return newSchemeHomeCreatSuccessState(newschemresp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewSchemeHomeCreatSuccessState value)
        newSchemeHomeCreatSuccessState,
    required TResult Function(NewSchemeHomeCreatfailedState value)
        newSchemeHomeCreatfailedState,
    required TResult Function(Newschcmehomeloadingstate value)
        newschcmehomeloadingstate,
    required TResult Function(_newSchemInitial value) newSchemInitial,
  }) {
    return newSchemeHomeCreatSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult? Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult? Function(_newSchemInitial value)? newSchemInitial,
  }) {
    return newSchemeHomeCreatSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult Function(_newSchemInitial value)? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemeHomeCreatSuccessState != null) {
      return newSchemeHomeCreatSuccessState(this);
    }
    return orElse();
  }
}

abstract class NewSchemeHomeCreatSuccessState
    implements NewschemcreatehomeState {
  const factory NewSchemeHomeCreatSuccessState(
          {required final NewSchemeHomeOutModel newschemresp}) =
      _$NewSchemeHomeCreatSuccessStateImpl;

  NewSchemeHomeOutModel get newschemresp;
  @JsonKey(ignore: true)
  _$$NewSchemeHomeCreatSuccessStateImplCopyWith<
          _$NewSchemeHomeCreatSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewSchemeHomeCreatfailedStateImplCopyWith<$Res> {
  factory _$$NewSchemeHomeCreatfailedStateImplCopyWith(
          _$NewSchemeHomeCreatfailedStateImpl value,
          $Res Function(_$NewSchemeHomeCreatfailedStateImpl) then) =
      __$$NewSchemeHomeCreatfailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$NewSchemeHomeCreatfailedStateImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeStateCopyWithImpl<$Res,
        _$NewSchemeHomeCreatfailedStateImpl>
    implements _$$NewSchemeHomeCreatfailedStateImplCopyWith<$Res> {
  __$$NewSchemeHomeCreatfailedStateImplCopyWithImpl(
      _$NewSchemeHomeCreatfailedStateImpl _value,
      $Res Function(_$NewSchemeHomeCreatfailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$NewSchemeHomeCreatfailedStateImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewSchemeHomeCreatfailedStateImpl
    implements NewSchemeHomeCreatfailedState {
  const _$NewSchemeHomeCreatfailedStateImpl({required this.response});

  @override
  final String response;

  @override
  String toString() {
    return 'NewschemcreatehomeState.newSchemeHomeCreatfailedState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSchemeHomeCreatfailedStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSchemeHomeCreatfailedStateImplCopyWith<
          _$NewSchemeHomeCreatfailedStateImpl>
      get copyWith => __$$NewSchemeHomeCreatfailedStateImplCopyWithImpl<
          _$NewSchemeHomeCreatfailedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeOutModel newschemresp)
        newSchemeHomeCreatSuccessState,
    required TResult Function(String response) newSchemeHomeCreatfailedState,
    required TResult Function() newschcmehomeloadingstate,
    required TResult Function() newSchemInitial,
  }) {
    return newSchemeHomeCreatfailedState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(String response)? newSchemeHomeCreatfailedState,
    TResult? Function()? newschcmehomeloadingstate,
    TResult? Function()? newSchemInitial,
  }) {
    return newSchemeHomeCreatfailedState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult Function(String response)? newSchemeHomeCreatfailedState,
    TResult Function()? newschcmehomeloadingstate,
    TResult Function()? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemeHomeCreatfailedState != null) {
      return newSchemeHomeCreatfailedState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewSchemeHomeCreatSuccessState value)
        newSchemeHomeCreatSuccessState,
    required TResult Function(NewSchemeHomeCreatfailedState value)
        newSchemeHomeCreatfailedState,
    required TResult Function(Newschcmehomeloadingstate value)
        newschcmehomeloadingstate,
    required TResult Function(_newSchemInitial value) newSchemInitial,
  }) {
    return newSchemeHomeCreatfailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult? Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult? Function(_newSchemInitial value)? newSchemInitial,
  }) {
    return newSchemeHomeCreatfailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult Function(_newSchemInitial value)? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemeHomeCreatfailedState != null) {
      return newSchemeHomeCreatfailedState(this);
    }
    return orElse();
  }
}

abstract class NewSchemeHomeCreatfailedState
    implements NewschemcreatehomeState {
  const factory NewSchemeHomeCreatfailedState(
      {required final String response}) = _$NewSchemeHomeCreatfailedStateImpl;

  String get response;
  @JsonKey(ignore: true)
  _$$NewSchemeHomeCreatfailedStateImplCopyWith<
          _$NewSchemeHomeCreatfailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewschcmehomeloadingstateImplCopyWith<$Res> {
  factory _$$NewschcmehomeloadingstateImplCopyWith(
          _$NewschcmehomeloadingstateImpl value,
          $Res Function(_$NewschcmehomeloadingstateImpl) then) =
      __$$NewschcmehomeloadingstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewschcmehomeloadingstateImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeStateCopyWithImpl<$Res,
        _$NewschcmehomeloadingstateImpl>
    implements _$$NewschcmehomeloadingstateImplCopyWith<$Res> {
  __$$NewschcmehomeloadingstateImplCopyWithImpl(
      _$NewschcmehomeloadingstateImpl _value,
      $Res Function(_$NewschcmehomeloadingstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewschcmehomeloadingstateImpl implements Newschcmehomeloadingstate {
  const _$NewschcmehomeloadingstateImpl();

  @override
  String toString() {
    return 'NewschemcreatehomeState.newschcmehomeloadingstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewschcmehomeloadingstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeOutModel newschemresp)
        newSchemeHomeCreatSuccessState,
    required TResult Function(String response) newSchemeHomeCreatfailedState,
    required TResult Function() newschcmehomeloadingstate,
    required TResult Function() newSchemInitial,
  }) {
    return newschcmehomeloadingstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(String response)? newSchemeHomeCreatfailedState,
    TResult? Function()? newschcmehomeloadingstate,
    TResult? Function()? newSchemInitial,
  }) {
    return newschcmehomeloadingstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult Function(String response)? newSchemeHomeCreatfailedState,
    TResult Function()? newschcmehomeloadingstate,
    TResult Function()? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newschcmehomeloadingstate != null) {
      return newschcmehomeloadingstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewSchemeHomeCreatSuccessState value)
        newSchemeHomeCreatSuccessState,
    required TResult Function(NewSchemeHomeCreatfailedState value)
        newSchemeHomeCreatfailedState,
    required TResult Function(Newschcmehomeloadingstate value)
        newschcmehomeloadingstate,
    required TResult Function(_newSchemInitial value) newSchemInitial,
  }) {
    return newschcmehomeloadingstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult? Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult? Function(_newSchemInitial value)? newSchemInitial,
  }) {
    return newschcmehomeloadingstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult Function(_newSchemInitial value)? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newschcmehomeloadingstate != null) {
      return newschcmehomeloadingstate(this);
    }
    return orElse();
  }
}

abstract class Newschcmehomeloadingstate implements NewschemcreatehomeState {
  const factory Newschcmehomeloadingstate() = _$NewschcmehomeloadingstateImpl;
}

/// @nodoc
abstract class _$$newSchemInitialImplCopyWith<$Res> {
  factory _$$newSchemInitialImplCopyWith(_$newSchemInitialImpl value,
          $Res Function(_$newSchemInitialImpl) then) =
      __$$newSchemInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$newSchemInitialImplCopyWithImpl<$Res>
    extends _$NewschemcreatehomeStateCopyWithImpl<$Res, _$newSchemInitialImpl>
    implements _$$newSchemInitialImplCopyWith<$Res> {
  __$$newSchemInitialImplCopyWithImpl(
      _$newSchemInitialImpl _value, $Res Function(_$newSchemInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$newSchemInitialImpl implements _newSchemInitial {
  const _$newSchemInitialImpl();

  @override
  String toString() {
    return 'NewschemcreatehomeState.newSchemInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$newSchemInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSchemeHomeOutModel newschemresp)
        newSchemeHomeCreatSuccessState,
    required TResult Function(String response) newSchemeHomeCreatfailedState,
    required TResult Function() newschcmehomeloadingstate,
    required TResult Function() newSchemInitial,
  }) {
    return newSchemInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(String response)? newSchemeHomeCreatfailedState,
    TResult? Function()? newschcmehomeloadingstate,
    TResult? Function()? newSchemInitial,
  }) {
    return newSchemInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSchemeHomeOutModel newschemresp)?
        newSchemeHomeCreatSuccessState,
    TResult Function(String response)? newSchemeHomeCreatfailedState,
    TResult Function()? newschcmehomeloadingstate,
    TResult Function()? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemInitial != null) {
      return newSchemInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewSchemeHomeCreatSuccessState value)
        newSchemeHomeCreatSuccessState,
    required TResult Function(NewSchemeHomeCreatfailedState value)
        newSchemeHomeCreatfailedState,
    required TResult Function(Newschcmehomeloadingstate value)
        newschcmehomeloadingstate,
    required TResult Function(_newSchemInitial value) newSchemInitial,
  }) {
    return newSchemInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult? Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult? Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult? Function(_newSchemInitial value)? newSchemInitial,
  }) {
    return newSchemInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewSchemeHomeCreatSuccessState value)?
        newSchemeHomeCreatSuccessState,
    TResult Function(NewSchemeHomeCreatfailedState value)?
        newSchemeHomeCreatfailedState,
    TResult Function(Newschcmehomeloadingstate value)?
        newschcmehomeloadingstate,
    TResult Function(_newSchemInitial value)? newSchemInitial,
    required TResult orElse(),
  }) {
    if (newSchemInitial != null) {
      return newSchemInitial(this);
    }
    return orElse();
  }
}

abstract class _newSchemInitial implements NewschemcreatehomeState {
  const factory _newSchemInitial() = _$newSchemInitialImpl;
}
