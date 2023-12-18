// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:regal_app/feature/data/repos/abstractrepos.dart' as _i3;
import 'package:regal_app/feature/domain/repoimpls/activeschemerepo/activeschemesrepo.dart'
    as _i13;
import 'package:regal_app/feature/domain/repoimpls/contactus/contactusrepo.dart'
    as _i4;
import 'package:regal_app/feature/domain/repoimpls/createuserrepo/createuserrepo.dart'
    as _i5;
import 'package:regal_app/feature/domain/repoimpls/dropdownrepo/dropdownrepo.dart'
    as _i6;
import 'package:regal_app/feature/domain/repoimpls/goldraterepo/goldraterepo.dart'
    as _i7;
import 'package:regal_app/feature/domain/repoimpls/instalmenthystory/instalmenthystiryrepo.dart'
    as _i14;
import 'package:regal_app/feature/domain/repoimpls/newschemehome/newschemehomerepo.dart'
    as _i9;
import 'package:regal_app/feature/domain/repoimpls/otprepo/otprepo.dart' as _i8;
import 'package:regal_app/feature/domain/repoimpls/paymentstatusupdate/paymentstatusupdaterepo.dart'
    as _i10;
import 'package:regal_app/feature/domain/repoimpls/resetpinrepo/resetpinrepo.dart'
    as _i11;
import 'package:regal_app/feature/domain/repoimpls/schemedetails/schemedetailsrepo.dart'
    as _i12;
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart'
    as _i24;
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart'
    as _i25;
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart'
    as _i26;
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart'
    as _i27;
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart'
    as _i15;
import 'package:regal_app/feature/state/bloc/newscheme/newscheme_bloc.dart'
    as _i17;
import 'package:regal_app/feature/state/bloc/newschemecreate/newschemcreatehome_bloc.dart'
    as _i16;
import 'package:regal_app/feature/state/bloc/newschemehome/newschemehome_bloc.dart'
    as _i18;
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart'
    as _i19;
import 'package:regal_app/feature/state/bloc/paymentstatusupdate/updatepaymentstatus_bloc.dart'
    as _i23;
import 'package:regal_app/feature/state/bloc/resetpin/resetpin_bloc.dart'
    as _i20;
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart'
    as _i21;
import 'package:regal_app/feature/state/bloc/updatenewpin/updatenewpin_bloc.dart'
    as _i22;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IContactDetails>(() => _i4.ContactDetailsRepo());
    gh.lazySingleton<_i3.ICreateUserRepo>(() => _i5.CreateNEwUserRepo());
    gh.lazySingleton<_i3.IDropdownRepo>(() => _i6.RelationShipRepo());
    gh.lazySingleton<_i3.IGoldRateRepo>(() => _i7.GoldRateRepo());
    gh.lazySingleton<_i3.IManageOTPRepo>(() => _i8.OTPRepo());
    gh.lazySingleton<_i3.INewSchemeHomeRepo>(() => _i9.NewSchemeHomeRepo());
    gh.lazySingleton<_i3.IPaymentStatusUpdateRepo>(
        () => _i10.PaymentStatusRepo());
    gh.lazySingleton<_i3.IResetPinRepo>(() => _i11.ResetPinRepo());
    gh.lazySingleton<_i3.ISchemeDetails>(() => _i12.SchemedetailsRepo());
    gh.lazySingleton<_i3.IUserSchemes>(() => _i13.ActiveSchemesRepo());
    gh.lazySingleton<_i3.IinstalmentHystoryRepo>(
        () => _i14.InstalmentHystoryRepo());
    gh.factory<_i15.InstalmenthystoryBloc>(
        () => _i15.InstalmenthystoryBloc(gh<_i3.IinstalmentHystoryRepo>()));
    gh.factory<_i16.NewschemcreatehomeBloc>(
        () => _i16.NewschemcreatehomeBloc(gh<_i3.INewSchemeHomeRepo>()));
    gh.factory<_i17.NewschemeBloc>(
        () => _i17.NewschemeBloc(gh<_i3.ICreateUserRepo>()));
    gh.factory<_i18.NewschemehomeBloc>(
        () => _i18.NewschemehomeBloc(gh<_i3.IDropdownRepo>()));
    gh.factory<_i19.NewschemeotpBloc>(
        () => _i19.NewschemeotpBloc(gh<_i3.IManageOTPRepo>()));
    gh.factory<_i20.ResetpinBloc>(
        () => _i20.ResetpinBloc(gh<_i3.IResetPinRepo>()));
    gh.factory<_i21.SchemedetailsBloc>(
        () => _i21.SchemedetailsBloc(gh<_i3.ISchemeDetails>()));
    gh.factory<_i22.UpdatenewpinBloc>(
        () => _i22.UpdatenewpinBloc(gh<_i3.IResetPinRepo>()));
    gh.factory<_i23.UpdatepaymentstatusBloc>(
        () => _i23.UpdatepaymentstatusBloc(gh<_i3.IPaymentStatusUpdateRepo>()));
    gh.factory<_i24.ActiveschemesBloc>(
        () => _i24.ActiveschemesBloc(gh<_i3.IUserSchemes>()));
    gh.factory<_i25.ContactusBloc>(
        () => _i25.ContactusBloc(gh<_i3.IContactDetails>()));
    gh.factory<_i26.DropdownitemsBloc>(
        () => _i26.DropdownitemsBloc(gh<_i3.IDropdownRepo>()));
    gh.factory<_i27.GoldrateBloc>(
        () => _i27.GoldrateBloc(gh<_i3.IGoldRateRepo>()));
    return this;
  }
}
