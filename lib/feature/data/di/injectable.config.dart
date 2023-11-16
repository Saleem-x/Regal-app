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
    as _i9;
import 'package:regal_app/feature/domain/repoimpls/contactus/contactusrepo.dart'
    as _i4;
import 'package:regal_app/feature/domain/repoimpls/dropdownrepo/dropdownrepo.dart'
    as _i5;
import 'package:regal_app/feature/domain/repoimpls/goldraterepo/goldraterepo.dart'
    as _i6;
import 'package:regal_app/feature/domain/repoimpls/instalmenthystory/instalmenthystiryrepo.dart'
    as _i10;
import 'package:regal_app/feature/domain/repoimpls/otprepo/otprepo.dart' as _i7;
import 'package:regal_app/feature/domain/repoimpls/schemedetails/schemedetailsrepo.dart'
    as _i8;
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart'
    as _i14;
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart'
    as _i15;
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart'
    as _i16;
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart'
    as _i17;
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart'
    as _i11;
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart'
    as _i12;
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart'
    as _i13;

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
    gh.lazySingleton<_i3.IDropdownRepo>(() => _i5.RelationShipRepo());
    gh.lazySingleton<_i3.IGoldRateRepo>(() => _i6.GoldRateRepo());
    gh.lazySingleton<_i3.IManageOTPRepo>(() => _i7.OTPRepo());
    gh.lazySingleton<_i3.ISchemeDetails>(() => _i8.SchemedetailsRepo());
    gh.lazySingleton<_i3.IUserSchemes>(() => _i9.ActiveSchemesRepo());
    gh.lazySingleton<_i3.IinstalmentHystoryRepo>(
        () => _i10.InstalmentHystoryRepo());
    gh.factory<_i11.InstalmenthystoryBloc>(
        () => _i11.InstalmenthystoryBloc(gh<_i3.IinstalmentHystoryRepo>()));
    gh.factory<_i12.NewschemeotpBloc>(
        () => _i12.NewschemeotpBloc(gh<_i3.IManageOTPRepo>()));
    gh.factory<_i13.SchemedetailsBloc>(
        () => _i13.SchemedetailsBloc(gh<_i3.ISchemeDetails>()));
    gh.factory<_i14.ActiveschemesBloc>(
        () => _i14.ActiveschemesBloc(gh<_i3.IUserSchemes>()));
    gh.factory<_i15.ContactusBloc>(
        () => _i15.ContactusBloc(gh<_i3.IContactDetails>()));
    gh.factory<_i16.DropdownitemsBloc>(
        () => _i16.DropdownitemsBloc(gh<_i3.IDropdownRepo>()));
    gh.factory<_i17.GoldrateBloc>(
        () => _i17.GoldrateBloc(gh<_i3.IGoldRateRepo>()));
    return this;
  }
}
