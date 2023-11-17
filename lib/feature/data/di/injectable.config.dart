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
    as _i11;
import 'package:regal_app/feature/domain/repoimpls/contactus/contactusrepo.dart'
    as _i4;
import 'package:regal_app/feature/domain/repoimpls/createuserrepo/createuserrepo.dart'
    as _i5;
import 'package:regal_app/feature/domain/repoimpls/dropdownrepo/dropdownrepo.dart'
    as _i6;
import 'package:regal_app/feature/domain/repoimpls/goldraterepo/goldraterepo.dart'
    as _i7;
import 'package:regal_app/feature/domain/repoimpls/instalmenthystory/instalmenthystiryrepo.dart'
    as _i12;
import 'package:regal_app/feature/domain/repoimpls/otprepo/otprepo.dart' as _i8;
import 'package:regal_app/feature/domain/repoimpls/resetpinrepo/resetpinrepo.dart'
    as _i9;
import 'package:regal_app/feature/domain/repoimpls/schemedetails/schemedetailsrepo.dart'
    as _i10;
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart'
    as _i18;
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart'
    as _i19;
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart'
    as _i20;
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart'
    as _i21;
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart'
    as _i13;
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart'
    as _i14;
import 'package:regal_app/feature/state/bloc/resetpin/resetpin_bloc.dart'
    as _i15;
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart'
    as _i16;
import 'package:regal_app/feature/state/bloc/updatenewpin/updatenewpin_bloc.dart'
    as _i17;

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
    gh.lazySingleton<_i3.IResetPinRepo>(() => _i9.ResetPinRepo());
    gh.lazySingleton<_i3.ISchemeDetails>(() => _i10.SchemedetailsRepo());
    gh.lazySingleton<_i3.IUserSchemes>(() => _i11.ActiveSchemesRepo());
    gh.lazySingleton<_i3.IinstalmentHystoryRepo>(
        () => _i12.InstalmentHystoryRepo());
    gh.factory<_i13.InstalmenthystoryBloc>(
        () => _i13.InstalmenthystoryBloc(gh<_i3.IinstalmentHystoryRepo>()));
    gh.factory<_i14.NewschemeotpBloc>(
        () => _i14.NewschemeotpBloc(gh<_i3.IManageOTPRepo>()));
    gh.factory<_i15.ResetpinBloc>(
        () => _i15.ResetpinBloc(gh<_i3.IResetPinRepo>()));
    gh.factory<_i16.SchemedetailsBloc>(
        () => _i16.SchemedetailsBloc(gh<_i3.ISchemeDetails>()));
    gh.factory<_i17.UpdatenewpinBloc>(
        () => _i17.UpdatenewpinBloc(gh<_i3.IResetPinRepo>()));
    gh.factory<_i18.ActiveschemesBloc>(
        () => _i18.ActiveschemesBloc(gh<_i3.IUserSchemes>()));
    gh.factory<_i19.ContactusBloc>(
        () => _i19.ContactusBloc(gh<_i3.IContactDetails>()));
    gh.factory<_i20.DropdownitemsBloc>(
        () => _i20.DropdownitemsBloc(gh<_i3.IDropdownRepo>()));
    gh.factory<_i21.GoldrateBloc>(
        () => _i21.GoldrateBloc(gh<_i3.IGoldRateRepo>()));
    return this;
  }
}
