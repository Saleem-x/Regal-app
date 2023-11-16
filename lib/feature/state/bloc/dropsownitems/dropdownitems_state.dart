part of 'dropdownitems_bloc.dart';

@freezed
class DropdownitemsState with _$DropdownitemsState {
  const factory DropdownitemsState.getAllDrpDwnData({
    required List<RelationShipModel>? relationshiplist,
    required List<DocumentTypeModel>? documentlist,
    required List<BranchModel>? branches,
    required List<SchemeListModel>? schemeslist,
    required List<SchemeTenureModel>? schemetenures,
  }) = GetAllDrpDwnDataState;

  factory DropdownitemsState.initial() =>
      const DropdownitemsState.getAllDrpDwnData(
          relationshiplist: null,
          documentlist: null,
          branches: null,
          schemeslist: null,
          schemetenures: null);
}
