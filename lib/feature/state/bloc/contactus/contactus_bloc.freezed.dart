// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contactus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactusEvent {
  String get datakey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey) getContactDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey)? getContactDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey)? getContactDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContactDetailsEvent value)
        getContactDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetContactDetailsEvent value)? getContactDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContactDetailsEvent value)? getContactDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactusEventCopyWith<ContactusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactusEventCopyWith<$Res> {
  factory $ContactusEventCopyWith(
          ContactusEvent value, $Res Function(ContactusEvent) then) =
      _$ContactusEventCopyWithImpl<$Res, ContactusEvent>;
  @useResult
  $Res call({String datakey});
}

/// @nodoc
class _$ContactusEventCopyWithImpl<$Res, $Val extends ContactusEvent>
    implements $ContactusEventCopyWith<$Res> {
  _$ContactusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
  }) {
    return _then(_value.copyWith(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetContactDetailsEventImplCopyWith<$Res>
    implements $ContactusEventCopyWith<$Res> {
  factory _$$GetContactDetailsEventImplCopyWith(
          _$GetContactDetailsEventImpl value,
          $Res Function(_$GetContactDetailsEventImpl) then) =
      __$$GetContactDetailsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datakey});
}

/// @nodoc
class __$$GetContactDetailsEventImplCopyWithImpl<$Res>
    extends _$ContactusEventCopyWithImpl<$Res, _$GetContactDetailsEventImpl>
    implements _$$GetContactDetailsEventImplCopyWith<$Res> {
  __$$GetContactDetailsEventImplCopyWithImpl(
      _$GetContactDetailsEventImpl _value,
      $Res Function(_$GetContactDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datakey = null,
  }) {
    return _then(_$GetContactDetailsEventImpl(
      datakey: null == datakey
          ? _value.datakey
          : datakey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetContactDetailsEventImpl implements GetContactDetailsEvent {
  const _$GetContactDetailsEventImpl({required this.datakey});

  @override
  final String datakey;

  @override
  String toString() {
    return 'ContactusEvent.getContactDetailsEvent(datakey: $datakey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContactDetailsEventImpl &&
            (identical(other.datakey, datakey) || other.datakey == datakey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datakey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactDetailsEventImplCopyWith<_$GetContactDetailsEventImpl>
      get copyWith => __$$GetContactDetailsEventImplCopyWithImpl<
          _$GetContactDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datakey) getContactDetailsEvent,
  }) {
    return getContactDetailsEvent(datakey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datakey)? getContactDetailsEvent,
  }) {
    return getContactDetailsEvent?.call(datakey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datakey)? getContactDetailsEvent,
    required TResult orElse(),
  }) {
    if (getContactDetailsEvent != null) {
      return getContactDetailsEvent(datakey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContactDetailsEvent value)
        getContactDetailsEvent,
  }) {
    return getContactDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetContactDetailsEvent value)? getContactDetailsEvent,
  }) {
    return getContactDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContactDetailsEvent value)? getContactDetailsEvent,
    required TResult orElse(),
  }) {
    if (getContactDetailsEvent != null) {
      return getContactDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetContactDetailsEvent implements ContactusEvent {
  const factory GetContactDetailsEvent({required final String datakey}) =
      _$GetContactDetailsEventImpl;

  @override
  String get datakey;
  @override
  @JsonKey(ignore: true)
  _$$GetContactDetailsEventImplCopyWith<_$GetContactDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContactUsModel? contactdetails) getcontactdetails,
    required TResult Function() contactFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult? Function()? contactFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult Function()? contactFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getcontactdetails value) getcontactdetails,
    required TResult Function(ContactFailedState value) contactFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getcontactdetails value)? getcontactdetails,
    TResult? Function(ContactFailedState value)? contactFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getcontactdetails value)? getcontactdetails,
    TResult Function(ContactFailedState value)? contactFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactusStateCopyWith<$Res> {
  factory $ContactusStateCopyWith(
          ContactusState value, $Res Function(ContactusState) then) =
      _$ContactusStateCopyWithImpl<$Res, ContactusState>;
}

/// @nodoc
class _$ContactusStateCopyWithImpl<$Res, $Val extends ContactusState>
    implements $ContactusStateCopyWith<$Res> {
  _$ContactusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetcontactdetailsImplCopyWith<$Res> {
  factory _$$GetcontactdetailsImplCopyWith(_$GetcontactdetailsImpl value,
          $Res Function(_$GetcontactdetailsImpl) then) =
      __$$GetcontactdetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactUsModel? contactdetails});
}

/// @nodoc
class __$$GetcontactdetailsImplCopyWithImpl<$Res>
    extends _$ContactusStateCopyWithImpl<$Res, _$GetcontactdetailsImpl>
    implements _$$GetcontactdetailsImplCopyWith<$Res> {
  __$$GetcontactdetailsImplCopyWithImpl(_$GetcontactdetailsImpl _value,
      $Res Function(_$GetcontactdetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactdetails = freezed,
  }) {
    return _then(_$GetcontactdetailsImpl(
      contactdetails: freezed == contactdetails
          ? _value.contactdetails
          : contactdetails // ignore: cast_nullable_to_non_nullable
              as ContactUsModel?,
    ));
  }
}

/// @nodoc

class _$GetcontactdetailsImpl implements Getcontactdetails {
  const _$GetcontactdetailsImpl({required this.contactdetails});

  @override
  final ContactUsModel? contactdetails;

  @override
  String toString() {
    return 'ContactusState.getcontactdetails(contactdetails: $contactdetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcontactdetailsImpl &&
            (identical(other.contactdetails, contactdetails) ||
                other.contactdetails == contactdetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactdetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetcontactdetailsImplCopyWith<_$GetcontactdetailsImpl> get copyWith =>
      __$$GetcontactdetailsImplCopyWithImpl<_$GetcontactdetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContactUsModel? contactdetails) getcontactdetails,
    required TResult Function() contactFailedState,
  }) {
    return getcontactdetails(contactdetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult? Function()? contactFailedState,
  }) {
    return getcontactdetails?.call(contactdetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult Function()? contactFailedState,
    required TResult orElse(),
  }) {
    if (getcontactdetails != null) {
      return getcontactdetails(contactdetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getcontactdetails value) getcontactdetails,
    required TResult Function(ContactFailedState value) contactFailedState,
  }) {
    return getcontactdetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getcontactdetails value)? getcontactdetails,
    TResult? Function(ContactFailedState value)? contactFailedState,
  }) {
    return getcontactdetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getcontactdetails value)? getcontactdetails,
    TResult Function(ContactFailedState value)? contactFailedState,
    required TResult orElse(),
  }) {
    if (getcontactdetails != null) {
      return getcontactdetails(this);
    }
    return orElse();
  }
}

abstract class Getcontactdetails implements ContactusState {
  const factory Getcontactdetails(
          {required final ContactUsModel? contactdetails}) =
      _$GetcontactdetailsImpl;

  ContactUsModel? get contactdetails;
  @JsonKey(ignore: true)
  _$$GetcontactdetailsImplCopyWith<_$GetcontactdetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactFailedStateImplCopyWith<$Res> {
  factory _$$ContactFailedStateImplCopyWith(_$ContactFailedStateImpl value,
          $Res Function(_$ContactFailedStateImpl) then) =
      __$$ContactFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactFailedStateImplCopyWithImpl<$Res>
    extends _$ContactusStateCopyWithImpl<$Res, _$ContactFailedStateImpl>
    implements _$$ContactFailedStateImplCopyWith<$Res> {
  __$$ContactFailedStateImplCopyWithImpl(_$ContactFailedStateImpl _value,
      $Res Function(_$ContactFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactFailedStateImpl implements ContactFailedState {
  const _$ContactFailedStateImpl();

  @override
  String toString() {
    return 'ContactusState.contactFailedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContactUsModel? contactdetails) getcontactdetails,
    required TResult Function() contactFailedState,
  }) {
    return contactFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult? Function()? contactFailedState,
  }) {
    return contactFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContactUsModel? contactdetails)? getcontactdetails,
    TResult Function()? contactFailedState,
    required TResult orElse(),
  }) {
    if (contactFailedState != null) {
      return contactFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getcontactdetails value) getcontactdetails,
    required TResult Function(ContactFailedState value) contactFailedState,
  }) {
    return contactFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getcontactdetails value)? getcontactdetails,
    TResult? Function(ContactFailedState value)? contactFailedState,
  }) {
    return contactFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getcontactdetails value)? getcontactdetails,
    TResult Function(ContactFailedState value)? contactFailedState,
    required TResult orElse(),
  }) {
    if (contactFailedState != null) {
      return contactFailedState(this);
    }
    return orElse();
  }
}

abstract class ContactFailedState implements ContactusState {
  const factory ContactFailedState() = _$ContactFailedStateImpl;
}
