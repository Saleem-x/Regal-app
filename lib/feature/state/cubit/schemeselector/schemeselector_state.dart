part of 'schemeselector_cubit.dart';

@freezed
class SchemeselectorState with _$SchemeselectorState {
  const factory SchemeselectorState.selectScheme({required int idx}) =
      SelectSchemeState;

  factory SchemeselectorState.initial() =>
      const SchemeselectorState.selectScheme(idx: 0);
}
