part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.splashScreenState() = SplashScreenState;
  const factory SplashState.animatingstate() = Animatingstate;

  factory SplashState.initial() => const SplashState.animatingstate();
}
