import 'package:dartz/dartz.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/contact_us_model/contact_us_model.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/gold_rate_model/gold_rate_model.dart';
import 'package:regal_app/feature/data/models/instalment_hystory_model/instalment_hystory_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';

abstract class IGoldRateRepo {
  Future<Either<MainFailures, GoldRateModel>> getGoldrate(String datakey);
}

abstract class IUserSchemes {
  Future<Either<MainFailures, List<CustomerSchemeModel>>> getactiveSchemes(
      String datakey, String cusId);
}

abstract class ISchemeDetails {
  Future<Either<MainFailures, SchemeDetailsModel>> getSchemeDetails(
      String datakey, String cusId, String schmid);
}

abstract class IContactDetails {
  Future<Either<MainFailures, ContactUsModel>> getContactDetails(
      String datakey);
}

abstract class IinstalmentHystoryRepo {
  Future<Either<MainFailures, List<InstalmentHystoryModel>>>
      getinstalmenthystory(String joinID, String url);
}
