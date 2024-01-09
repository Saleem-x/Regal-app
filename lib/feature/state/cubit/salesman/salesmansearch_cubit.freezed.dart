// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salesmansearch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesmansearchState {
  List<SalesManModel>? get salesmanlist => throw _privateConstructorUsedError;
  String? get selectedsalesman => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)
        searchedsalesmanlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)?
        searchedsalesmanlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)?
        searchedsalesmanlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedSalesmanList value) searchedsalesmanlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedSalesmanList value)? searchedsalesmanlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedSalesmanList value)? searchedsalesmanlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesmansearchStateCopyWith<SalesmansearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesmansearchStateCopyWith<$Res> {
  factory $SalesmansearchStateCopyWith(
          SalesmansearchState value, $Res Function(SalesmansearchState) then) =
      _$SalesmansearchStateCopyWithImpl<$Res, SalesmansearchState>;
  @useResult
  $Res call({List<SalesManModel>? salesmanlist, String? selectedsalesman});
}

/// @nodoc
class _$SalesmansearchStateCopyWithImpl<$Res, $Val extends SalesmansearchState>
    implements $SalesmansearchStateCopyWith<$Res> {
  _$SalesmansearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesmanlist = freezed,
    Object? selectedsalesman = freezed,
  }) {
    return _then(_value.copyWith(
      salesmanlist: freezed == salesmanlist
          ? _value.salesmanlist
          : salesmanlist // ignore: cast_nullable_to_non_nullable
              as List<SalesManModel>?,
      selectedsalesman: freezed == selectedsalesman
          ? _value.selectedsalesman
          : selectedsalesman // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedSalesmanListImplCopyWith<$Res>
    implements $SalesmansearchStateCopyWith<$Res> {
  factory _$$SearchedSalesmanListImplCopyWith(_$SearchedSalesmanListImpl value,
          $Res Function(_$SearchedSalesmanListImpl) then) =
      __$$SearchedSalesmanListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SalesManModel>? salesmanlist, String? selectedsalesman});
}

/// @nodoc
class __$$SearchedSalesmanListImplCopyWithImpl<$Res>
    extends _$SalesmansearchStateCopyWithImpl<$Res, _$SearchedSalesmanListImpl>
    implements _$$SearchedSalesmanListImplCopyWith<$Res> {
  __$$SearchedSalesmanListImplCopyWithImpl(_$SearchedSalesmanListImpl _value,
      $Res Function(_$SearchedSalesmanListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesmanlist = freezed,
    Object? selectedsalesman = freezed,
  }) {
    return _then(_$SearchedSalesmanListImpl(
      salesmanlist: freezed == salesmanlist
          ? _value._salesmanlist
          : salesmanlist // ignore: cast_nullable_to_non_nullable
              as List<SalesManModel>?,
      selectedsalesman: freezed == selectedsalesman
          ? _value.selectedsalesman
          : selectedsalesman // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchedSalesmanListImpl implements SearchedSalesmanList {
  const _$SearchedSalesmanListImpl(
      {required final List<SalesManModel>? salesmanlist,
      required this.selectedsalesman})
      : _salesmanlist = salesmanlist;

  final List<SalesManModel>? _salesmanlist;
  @override
  List<SalesManModel>? get salesmanlist {
    final value = _salesmanlist;
    if (value == null) return null;
    if (_salesmanlist is EqualUnmodifiableListView) return _salesmanlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? selectedsalesman;

  @override
  String toString() {
    return 'SalesmansearchState.searchedsalesmanlist(salesmanlist: $salesmanlist, selectedsalesman: $selectedsalesman)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedSalesmanListImpl &&
            const DeepCollectionEquality()
                .equals(other._salesmanlist, _salesmanlist) &&
            (identical(other.selectedsalesman, selectedsalesman) ||
                other.selectedsalesman == selectedsalesman));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_salesmanlist), selectedsalesman);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedSalesmanListImplCopyWith<_$SearchedSalesmanListImpl>
      get copyWith =>
          __$$SearchedSalesmanListImplCopyWithImpl<_$SearchedSalesmanListImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)
        searchedsalesmanlist,
  }) {
    return searchedsalesmanlist(salesmanlist, selectedsalesman);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)?
        searchedsalesmanlist,
  }) {
    return searchedsalesmanlist?.call(salesmanlist, selectedsalesman);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<SalesManModel>? salesmanlist, String? selectedsalesman)?
        searchedsalesmanlist,
    required TResult orElse(),
  }) {
    if (searchedsalesmanlist != null) {
      return searchedsalesmanlist(salesmanlist, selectedsalesman);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchedSalesmanList value) searchedsalesmanlist,
  }) {
    return searchedsalesmanlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchedSalesmanList value)? searchedsalesmanlist,
  }) {
    return searchedsalesmanlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchedSalesmanList value)? searchedsalesmanlist,
    required TResult orElse(),
  }) {
    if (searchedsalesmanlist != null) {
      return searchedsalesmanlist(this);
    }
    return orElse();
  }
}

abstract class SearchedSalesmanList implements SalesmansearchState {
  const factory SearchedSalesmanList(
      {required final List<SalesManModel>? salesmanlist,
      required final String? selectedsalesman}) = _$SearchedSalesmanListImpl;

  @override
  List<SalesManModel>? get salesmanlist;
  @override
  String? get selectedsalesman;
  @override
  @JsonKey(ignore: true)
  _$$SearchedSalesmanListImplCopyWith<_$SearchedSalesmanListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
