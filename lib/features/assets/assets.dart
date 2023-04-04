abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
  
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

 
  String get collegroIcon => '$basePath/collegro_icon.svg';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');
 
  String get startAppBottomImage => '$basePath/start_app_bottom_image.svg';

  String get startAppTopImage => '$basePath/start_app_top_image.svg';

  String get collegroWelcomeImage => '$basePath/collegro_welcome_background_image.png';

  String get onBoardingFirstScreenImageFirst => '$basePath/onboarding_first_screen_image_first.svg';
  String get onBoardingFirstScreenImageSecond => '$basePath/onboarding_first_screen_image_second.svg';
  String get onBoardingSecondScreenImageFirst => '$basePath/onboarding_second_screen_image_first.svg';
  String get onBoardingSecondScreenImageSecond => '$basePath/onboarding_second_screen_image_second.svg';

  String get onBoardingFirstCenterImage => '$basePath/onboarding_first_center_image.png';
  String get onBoardingSecondCenterImage => '$basePath/onboarding_second_center_image.png';
  String get onBoardingThirdCenterImage => '$basePath/onboarding_third_center_image.png';
  String get onBoardingFourthCenterImage => '$basePath/onboarding_fourth_center_image.png';
}

