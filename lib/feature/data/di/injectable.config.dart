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
    as _i7;
import 'package:regal_app/feature/domain/repoimpls/contactus/contactusrepo.dart'
    as _i4;
import 'package:regal_app/feature/domain/repoimpls/goldraterepo/goldraterepo.dart'
    as _i5;
import 'package:regal_app/feature/domain/repoimpls/schemedetails/schemedetailsrepo.dart'
    as _i6;
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart'
    as _i9;
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart'
    as _i10;
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart'
    as _i11;
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart'
    as _i8;

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
    gh.lazySingleton<_i3.IGoldRateRepo>(() => _i5.GoldRateRepo());
    gh.lazySingleton<_i3.ISchemeDetails>(() => _i6.SchemedetailsRepo());
    gh.lazySingleton<_i3.IUserSchemes>(() => _i7.ActiveSchemesRepo());
    gh.factory<_i8.SchemedetailsBloc>(
        () => _i8.SchemedetailsBloc(gh<_i3.ISchemeDetails>()));
    gh.factory<_i9.ActiveschemesBloc>(
        () => _i9.ActiveschemesBloc(gh<_i3.IUserSchemes>()));
    gh.factory<_i10.ContactusBloc>(
        () => _i10.ContactusBloc(gh<_i3.IContactDetails>()));
    gh.factory<_i11.GoldrateBloc>(
        () => _i11.GoldrateBloc(gh<_i3.IGoldRateRepo>()));
    return this;
  }
}
