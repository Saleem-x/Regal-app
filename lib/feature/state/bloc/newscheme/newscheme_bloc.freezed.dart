// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newscheme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewschemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)
        createNewUser,
    required TResult Function() newSchemeLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult? Function()? newSchemeLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult Function()? newSchemeLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewUserEvent value) createNewUser,
    required TResult Function(NewSchemeLoadingEvent value)
        newSchemeLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewUserEvent value)? createNewUser,
    TResult? Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewUserEvent value)? createNewUser,
    TResult Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewschemeEventCopyWith<$Res> {
  factory $NewschemeEventCopyWith(
          NewschemeEvent value, $Res Function(NewschemeEvent) then) =
      _$NewschemeEventCopyWithImpl<$Res, NewschemeEvent>;
}

/// @nodoc
class _$NewschemeEventCopyWithImpl<$Res, $Val extends NewschemeEvent>
    implements $NewschemeEventCopyWith<$Res> {
  _$NewschemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateNewUserEventImplCopyWith<$Res> {
  factory _$$CreateNewUserEventImplCopyWith(_$CreateNewUserEventImpl value,
          $Res Function(_$CreateNewUserEventImpl) then) =
      __$$CreateNewUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CreateUserInModel userInModel,
      String dppath,
      String docfrnt,
      String? docback});
}

/// @nodoc
class __$$CreateNewUserEventImplCopyWithImpl<$Res>
    extends _$NewschemeEventCopyWithImpl<$Res, _$CreateNewUserEventImpl>
    implements _$$CreateNewUserEventImplCopyWith<$Res> {
  __$$CreateNewUserEventImplCopyWithImpl(_$CreateNewUserEventImpl _value,
      $Res Function(_$CreateNewUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInModel = null,
    Object? dppath = null,
    Object? docfrnt = null,
    Object? docback = freezed,
  }) {
    return _then(_$CreateNewUserEventImpl(
      userInModel: null == userInModel
          ? _value.userInModel
          : userInModel // ignore: cast_nullable_to_non_nullable
              as CreateUserInModel,
      dppath: null == dppath
          ? _value.dppath
          : dppath // ignore: cast_nullable_to_non_nullable
              as String,
      docfrnt: null == docfrnt
          ? _value.docfrnt
          : docfrnt // ignore: cast_nullable_to_non_nullable
              as String,
      docback: freezed == docback
          ? _value.docback
          : docback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateNewUserEventImpl implements CreateNewUserEvent {
  const _$CreateNewUserEventImpl(
      {required this.userInModel,
      required this.dppath,
      required this.docfrnt,
      required this.docback});

  @override
  final CreateUserInModel userInModel;
  @override
  final String dppath;
  @override
  final String docfrnt;
  @override
  final String? docback;

  @override
  String toString() {
    return 'NewschemeEvent.createNewUser(userInModel: $userInModel, dppath: $dppath, docfrnt: $docfrnt, docback: $docback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewUserEventImpl &&
            (identical(other.userInModel, userInModel) ||
                other.userInModel == userInModel) &&
            (identical(other.dppath, dppath) || other.dppath == dppath) &&
            (identical(other.docfrnt, docfrnt) || other.docfrnt == docfrnt) &&
            (identical(other.docback, docback) || other.docback == docback));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userInModel, dppath, docfrnt, docback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewUserEventImplCopyWith<_$CreateNewUserEventImpl> get copyWith =>
      __$$CreateNewUserEventImplCopyWithImpl<_$CreateNewUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)
        createNewUser,
    required TResult Function() newSchemeLoadingEvent,
  }) {
    return createNewUser(userInModel, dppath, docfrnt, docback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult? Function()? newSchemeLoadingEvent,
  }) {
    return createNewUser?.call(userInModel, dppath, docfrnt, docback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult Function()? newSchemeLoadingEvent,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser(userInModel, dppath, docfrnt, docback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewUserEvent value) createNewUser,
    required TResult Function(NewSchemeLoadingEvent value)
        newSchemeLoadingEvent,
  }) {
    return createNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewUserEvent value)? createNewUser,
    TResult? Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
  }) {
    return createNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewUserEvent value)? createNewUser,
    TResult Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
    required TResult orElse(),
  }) {
    if (createNewUser != null) {
      return createNewUser(this);
    }
    return orElse();
  }
}

abstract class CreateNewUserEvent implements NewschemeEvent {
  const factory CreateNewUserEvent(
      {required final CreateUserInModel userInModel,
      required final String dppath,
      required final String docfrnt,
      required final String? docback}) = _$CreateNewUserEventImpl;

  CreateUserInModel get userInModel;
  String get dppath;
  String get docfrnt;
  String? get docback;
  @JsonKey(ignore: true)
  _$$CreateNewUserEventImplCopyWith<_$CreateNewUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewSchemeLoadingEventImplCopyWith<$Res> {
  factory _$$NewSchemeLoadingEventImplCopyWith(
          _$NewSchemeLoadingEventImpl value,
          $Res Function(_$NewSchemeLoadingEventImpl) then) =
      __$$NewSchemeLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewSchemeLoadingEventImplCopyWithImpl<$Res>
    extends _$NewschemeEventCopyWithImpl<$Res, _$NewSchemeLoadingEventImpl>
    implements _$$NewSchemeLoadingEventImplCopyWith<$Res> {
  __$$NewSchemeLoadingEventImplCopyWithImpl(_$NewSchemeLoadingEventImpl _value,
      $Res Function(_$NewSchemeLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewSchemeLoadingEventImpl implements NewSchemeLoadingEvent {
  const _$NewSchemeLoadingEventImpl();

  @override
  String toString() {
    return 'NewschemeEvent.newSchemeLoadingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSchemeLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)
        createNewUser,
    required TResult Function() newSchemeLoadingEvent,
  }) {
    return newSchemeLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult? Function()? newSchemeLoadingEvent,
  }) {
    return newSchemeLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserInModel userInModel, String dppath,
            String docfrnt, String? docback)?
        createNewUser,
    TResult Function()? newSchemeLoadingEvent,
    required TResult orElse(),
  }) {
    if (newSchemeLoadingEvent != null) {
      return newSchemeLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewUserEvent value) createNewUser,
    required TResult Function(NewSchemeLoadingEvent value)
        newSchemeLoadingEvent,
  }) {
    return newSchemeLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewUserEvent value)? createNewUser,
    TResult? Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
  }) {
    return newSchemeLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewUserEvent value)? createNewUser,
    TResult Function(NewSchemeLoadingEvent value)? newSchemeLoadingEvent,
    required TResult orElse(),
  }) {
    if (newSchemeLoadingEvent != null) {
      return newSchemeLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class NewSchemeLoadingEvent implements NewschemeEvent {
  const factory NewSchemeLoadingEvent() = _$NewSchemeLoadingEventImpl;
}

/// @nodoc
mixin _$NewschemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserOutModel outuser) createUserSuccess,
    required TResult Function(String error) createUserFailed,
    required TResult Function() creatingUserLoading,
    required TResult Function() newSchemeInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult? Function(String error)? createUserFailed,
    TResult? Function()? creatingUserLoading,
    TResult? Function()? newSchemeInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult Function(String error)? createUserFailed,
    TResult Function()? creatingUserLoading,
    TResult Function()? newSchemeInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(CreateUserFailed value) createUserFailed,
    required TResult Function(CreatingUserLoading value) creatingUserLoading,
    required TResult Function(NewSchemeInitial value) newSchemeInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(CreateUserFailed value)? createUserFailed,
    TResult? Function(CreatingUserLoading value)? creatingUserLoading,
    TResult? Function(NewSchemeInitial value)? newSchemeInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(CreateUserFailed value)? createUserFailed,
    TResult Function(CreatingUserLoading value)? creatingUserLoading,
    TResult Function(NewSchemeInitial value)? newSchemeInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewschemeStateCopyWith<$Res> {
  factory $NewschemeStateCopyWith(
          NewschemeState value, $Res Function(NewschemeState) then) =
      _$NewschemeStateCopyWithImpl<$Res, NewschemeState>;
}

/// @nodoc
class _$NewschemeStateCopyWithImpl<$Res, $Val extends NewschemeState>
    implements $NewschemeStateCopyWith<$Res> {
  _$NewschemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserSuccessImplCopyWith<$Res> {
  factory _$$CreateUserSuccessImplCopyWith(_$CreateUserSuccessImpl value,
          $Res Function(_$CreateUserSuccessImpl) then) =
      __$$CreateUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserOutModel outuser});
}

/// @nodoc
class __$$CreateUserSuccessImplCopyWithImpl<$Res>
    extends _$NewschemeStateCopyWithImpl<$Res, _$CreateUserSuccessImpl>
    implements _$$CreateUserSuccessImplCopyWith<$Res> {
  __$$CreateUserSuccessImplCopyWithImpl(_$CreateUserSuccessImpl _value,
      $Res Function(_$CreateUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outuser = null,
  }) {
    return _then(_$CreateUserSuccessImpl(
      outuser: null == outuser
          ? _value.outuser
          : outuser // ignore: cast_nullable_to_non_nullable
              as CreateUserOutModel,
    ));
  }
}

/// @nodoc

class _$CreateUserSuccessImpl implements CreateUserSuccess {
  const _$CreateUserSuccessImpl({required this.outuser});

  @override
  final CreateUserOutModel outuser;

  @override
  String toString() {
    return 'NewschemeState.createUserSuccess(outuser: $outuser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessImpl &&
            (identical(other.outuser, outuser) || other.outuser == outuser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outuser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessImplCopyWith<_$CreateUserSuccessImpl> get copyWith =>
      __$$CreateUserSuccessImplCopyWithImpl<_$CreateUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserOutModel outuser) createUserSuccess,
    required TResult Function(String error) createUserFailed,
    required TResult Function() creatingUserLoading,
    required TResult Function() newSchemeInitial,
  }) {
    return createUserSuccess(outuser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult? Function(String error)? createUserFailed,
    TResult? Function()? creatingUserLoading,
    TResult? Function()? newSchemeInitial,
  }) {
    return createUserSuccess?.call(outuser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult Function(String error)? createUserFailed,
    TResult Function()? creatingUserLoading,
    TResult Function()? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (createUserSuccess != null) {
      return createUserSuccess(outuser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(CreateUserFailed value) createUserFailed,
    required TResult Function(CreatingUserLoading value) creatingUserLoading,
    required TResult Function(NewSchemeInitial value) newSchemeInitial,
  }) {
    return createUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(CreateUserFailed value)? createUserFailed,
    TResult? Function(CreatingUserLoading value)? creatingUserLoading,
    TResult? Function(NewSchemeInitial value)? newSchemeInitial,
  }) {
    return createUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(CreateUserFailed value)? createUserFailed,
    TResult Function(CreatingUserLoading value)? creatingUserLoading,
    TResult Function(NewSchemeInitial value)? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (createUserSuccess != null) {
      return createUserSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccess implements NewschemeState {
  const factory CreateUserSuccess({required final CreateUserOutModel outuser}) =
      _$CreateUserSuccessImpl;

  CreateUserOutModel get outuser;
  @JsonKey(ignore: true)
  _$$CreateUserSuccessImplCopyWith<_$CreateUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserFailedImplCopyWith<$Res> {
  factory _$$CreateUserFailedImplCopyWith(_$CreateUserFailedImpl value,
          $Res Function(_$CreateUserFailedImpl) then) =
      __$$CreateUserFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CreateUserFailedImplCopyWithImpl<$Res>
    extends _$NewschemeStateCopyWithImpl<$Res, _$CreateUserFailedImpl>
    implements _$$CreateUserFailedImplCopyWith<$Res> {
  __$$CreateUserFailedImplCopyWithImpl(_$CreateUserFailedImpl _value,
      $Res Function(_$CreateUserFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateUserFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserFailedImpl implements CreateUserFailed {
  const _$CreateUserFailedImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'NewschemeState.createUserFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserFailedImplCopyWith<_$CreateUserFailedImpl> get copyWith =>
      __$$CreateUserFailedImplCopyWithImpl<_$CreateUserFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserOutModel outuser) createUserSuccess,
    required TResult Function(String error) createUserFailed,
    required TResult Function() creatingUserLoading,
    required TResult Function() newSchemeInitial,
  }) {
    return createUserFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult? Function(String error)? createUserFailed,
    TResult? Function()? creatingUserLoading,
    TResult? Function()? newSchemeInitial,
  }) {
    return createUserFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult Function(String error)? createUserFailed,
    TResult Function()? creatingUserLoading,
    TResult Function()? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (createUserFailed != null) {
      return createUserFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(CreateUserFailed value) createUserFailed,
    required TResult Function(CreatingUserLoading value) creatingUserLoading,
    required TResult Function(NewSchemeInitial value) newSchemeInitial,
  }) {
    return createUserFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(CreateUserFailed value)? createUserFailed,
    TResult? Function(CreatingUserLoading value)? creatingUserLoading,
    TResult? Function(NewSchemeInitial value)? newSchemeInitial,
  }) {
    return createUserFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(CreateUserFailed value)? createUserFailed,
    TResult Function(CreatingUserLoading value)? creatingUserLoading,
    TResult Function(NewSchemeInitial value)? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (createUserFailed != null) {
      return createUserFailed(this);
    }
    return orElse();
  }
}

abstract class CreateUserFailed implements NewschemeState {
  const factory CreateUserFailed({required final String error}) =
      _$CreateUserFailedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CreateUserFailedImplCopyWith<_$CreateUserFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatingUserLoadingImplCopyWith<$Res> {
  factory _$$CreatingUserLoadingImplCopyWith(_$CreatingUserLoadingImpl value,
          $Res Function(_$CreatingUserLoadingImpl) then) =
      __$$CreatingUserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingUserLoadingImplCopyWithImpl<$Res>
    extends _$NewschemeStateCopyWithImpl<$Res, _$CreatingUserLoadingImpl>
    implements _$$CreatingUserLoadingImplCopyWith<$Res> {
  __$$CreatingUserLoadingImplCopyWithImpl(_$CreatingUserLoadingImpl _value,
      $Res Function(_$CreatingUserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatingUserLoadingImpl implements CreatingUserLoading {
  const _$CreatingUserLoadingImpl();

  @override
  String toString() {
    return 'NewschemeState.creatingUserLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatingUserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserOutModel outuser) createUserSuccess,
    required TResult Function(String error) createUserFailed,
    required TResult Function() creatingUserLoading,
    required TResult Function() newSchemeInitial,
  }) {
    return creatingUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult? Function(String error)? createUserFailed,
    TResult? Function()? creatingUserLoading,
    TResult? Function()? newSchemeInitial,
  }) {
    return creatingUserLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult Function(String error)? createUserFailed,
    TResult Function()? creatingUserLoading,
    TResult Function()? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (creatingUserLoading != null) {
      return creatingUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(CreateUserFailed value) createUserFailed,
    required TResult Function(CreatingUserLoading value) creatingUserLoading,
    required TResult Function(NewSchemeInitial value) newSchemeInitial,
  }) {
    return creatingUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(CreateUserFailed value)? createUserFailed,
    TResult? Function(CreatingUserLoading value)? creatingUserLoading,
    TResult? Function(NewSchemeInitial value)? newSchemeInitial,
  }) {
    return creatingUserLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(CreateUserFailed value)? createUserFailed,
    TResult Function(CreatingUserLoading value)? creatingUserLoading,
    TResult Function(NewSchemeInitial value)? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (creatingUserLoading != null) {
      return creatingUserLoading(this);
    }
    return orElse();
  }
}

abstract class CreatingUserLoading implements NewschemeState {
  const factory CreatingUserLoading() = _$CreatingUserLoadingImpl;
}

/// @nodoc
abstract class _$$NewSchemeInitialImplCopyWith<$Res> {
  factory _$$NewSchemeInitialImplCopyWith(_$NewSchemeInitialImpl value,
          $Res Function(_$NewSchemeInitialImpl) then) =
      __$$NewSchemeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewSchemeInitialImplCopyWithImpl<$Res>
    extends _$NewschemeStateCopyWithImpl<$Res, _$NewSchemeInitialImpl>
    implements _$$NewSchemeInitialImplCopyWith<$Res> {
  __$$NewSchemeInitialImplCopyWithImpl(_$NewSchemeInitialImpl _value,
      $Res Function(_$NewSchemeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewSchemeInitialImpl implements NewSchemeInitial {
  const _$NewSchemeInitialImpl();

  @override
  String toString() {
    return 'NewschemeState.newSchemeInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewSchemeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserOutModel outuser) createUserSuccess,
    required TResult Function(String error) createUserFailed,
    required TResult Function() creatingUserLoading,
    required TResult Function() newSchemeInitial,
  }) {
    return newSchemeInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult? Function(String error)? createUserFailed,
    TResult? Function()? creatingUserLoading,
    TResult? Function()? newSchemeInitial,
  }) {
    return newSchemeInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserOutModel outuser)? createUserSuccess,
    TResult Function(String error)? createUserFailed,
    TResult Function()? creatingUserLoading,
    TResult Function()? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (newSchemeInitial != null) {
      return newSchemeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(CreateUserFailed value) createUserFailed,
    required TResult Function(CreatingUserLoading value) creatingUserLoading,
    required TResult Function(NewSchemeInitial value) newSchemeInitial,
  }) {
    return newSchemeInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(CreateUserFailed value)? createUserFailed,
    TResult? Function(CreatingUserLoading value)? creatingUserLoading,
    TResult? Function(NewSchemeInitial value)? newSchemeInitial,
  }) {
    return newSchemeInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(CreateUserFailed value)? createUserFailed,
    TResult Function(CreatingUserLoading value)? creatingUserLoading,
    TResult Function(NewSchemeInitial value)? newSchemeInitial,
    required TResult orElse(),
  }) {
    if (newSchemeInitial != null) {
      return newSchemeInitial(this);
    }
    return orElse();
  }
}

abstract class NewSchemeInitial implements NewschemeState {
  const factory NewSchemeInitial() = _$NewSchemeInitialImpl;
}
