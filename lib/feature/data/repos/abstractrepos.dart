import 'package:dartz/dartz.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/contact_us_model/contact_us_model.dart';
import 'package:regal_app/feature/data/models/create_user_in_model/create_user_in_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/document_type_model/document_type_model.dart';
import 'package:regal_app/feature/data/models/generate_otp_model/generate_otp_model.dart';
import 'package:regal_app/feature/data/models/gold_rate_model/gold_rate_model.dart';
import 'package:regal_app/feature/data/models/instalment_hystory_model/instalment_hystory_model.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_in_model/new_scheme_home_in_model.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_out_model/new_scheme_home_out_model.dart';
import 'package:regal_app/feature/data/models/payment_hystory_in_model/payment_hystory_in_model.dart';
import 'package:regal_app/feature/data/models/payment_hystoryout_model/payment_hystoryout_model.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/data/models/relation_ship_model/relation_ship_model.dart';
import 'package:regal_app/feature/data/models/sales_man_model/sales_man_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/data/models/verify_otp_model/verify_otp_model.dart';

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

abstract class IManageOTPRepo {
  Future<Either<MainFailures, GenerateOtpModel>> sendOtp(String mobileNo);
  Future<Either<MainFailures, VerifyOtpModel>> verifyOtP(
      String mobileNo, String otp);
}

abstract class IDropdownRepo {
  Future<Either<MainFailures, List<RelationShipModel>>> getAllRelation();
  Future<Either<MainFailures, List<DocumentTypeModel>>> getAlldocumenttypes();
  Future<Either<MainFailures, List<BranchModel>>> getAllbranches();
  Future<Either<MainFailures, List<SchemeListModel>>> getbranchScheme();
  Future<Either<MainFailures, List<SchemeTenureModel>>> getschemetenure();
  Future<Either<MainFailures, List<SalesManModel>>> getsalesman(
      String branchID);
}

abstract class ICreateUserRepo {
  Future<Either<MainFailures, CreateUserOutModel>> createNewUserScheme(
      CreateUserInModel newuser,
      String dpimageurl,
      String docfrnt,
      String? docback);
}

abstract class IResetPinRepo {
  Future<Either<MainFailures, PinResetOtpModel>> sendOtp(String mobileNo);
  Future<Either<MainFailures, PinResetOtpModel>> verifyOtP(
      String cusId, String otp);

  Future<Either<MainFailures, PinResetOtpModel>> resetPin(
    String cusId,
    String pin,
  );
}

abstract class IPaymentHystoryRepo {
  Future<Either<MainFailures, PaymentHystoryoutModel>> getpaymenthystory(
      PaymentHystoryInModel userpaymentmodel);
}

abstract class INewSchemeHomeRepo {
  Future<Either<MainFailures, NewSchemeHomeOutModel>> createnewscheme(
      NewSchemeHomeInModel newscheme);
}
