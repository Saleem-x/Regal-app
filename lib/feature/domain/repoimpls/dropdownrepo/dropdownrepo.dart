import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/document_type_model/document_type_model.dart';
import 'package:regal_app/feature/data/models/relation_ship_model/relation_ship_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IDropdownRepo)
class RelationShipRepo implements IDropdownRepo {
  @override
  Future<Either<MainFailures, List<RelationShipModel>>> getAllRelation() async {
    try {
      final response = await http.post(Uri.parse(baseurl + relationshipurl),
          body: {"datakey": datakey});
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> productData = json['result'];
        List<RelationShipModel> relations = productData
            .map<RelationShipModel>((json) => RelationShipModel.fromJson(json))
            .toList();

        return right(relations);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<DocumentTypeModel>>>
      getAlldocumenttypes() async {
    try {
      final response = await http.post(Uri.parse(baseurl + documenttypeurl),
          body: {"datakey": datakey});
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> productData = json['result'];
        List<DocumentTypeModel> documentlist = productData
            .map<DocumentTypeModel>((json) => DocumentTypeModel.fromJson(json))
            .toList();

        return right(documentlist);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<BranchModel>>> getAllbranches() async {
    try {
      final response = await http.post(Uri.parse(baseurl + getbranchesurl),
          body: {"datakey": datakey});
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> productData = json['result'];
        List<BranchModel> branches = productData
            .map<BranchModel>((json) => BranchModel.fromJson(json))
            .toList();

        return right(branches);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SchemeListModel>>> getbranchScheme() async {
    try {
      final response = await http.post(Uri.parse(baseurl + getbranchschemesurl),
          body: {"datakey": datakey});
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> productData = json['result'];
        List<SchemeListModel> schemes = productData
            .map<SchemeListModel>((json) => SchemeListModel.fromJson(json))
            .toList();

        return right(schemes);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SchemeTenureModel>>>
      getschemetenure() async {
    try {
      final response = await http.post(Uri.parse(baseurl + schemetenureurl),
          body: {"datakey": datakey});
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> productData = json['result'];
        List<SchemeTenureModel> schemetenure = productData
            .map<SchemeTenureModel>((json) => SchemeTenureModel.fromJson(json))
            .toList();

        return right(schemetenure);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
