import 'package:flutter/material.dart';
import 'package:twitter_app_flutter/features/delete_account/presentation/pages/delete_account.dart';
import 'package:twitter_app_flutter/features/delete_account/presentation/pages/enter_email.dart';
import 'package:twitter_app_flutter/features/delete_account/presentation/pages/enter_verification_code.dart';
import 'package:twitter_app_flutter/features/on_boarding/presentation/pages/onboarding.dart';
import 'package:twitter_app_flutter/features/sign_in/presentation/pages/set_new_password_screen.dart';
import 'package:twitter_app_flutter/features/sign_in/presentation/pages/sign_in.dart';
import 'package:twitter_app_flutter/features/sign_in/presentation/pages/verify_code.dart';
import 'package:twitter_app_flutter/features/sign_up_screen/presentation/pages/email_verification.dart';
import 'package:twitter_app_flutter/features/sign_up_screen/presentation/pages/email_verified.dart';
import 'package:twitter_app_flutter/features/sign_up_screen/presentation/pages/sign_up_screen.dart';
import 'package:twitter_app_flutter/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:twitter_app_flutter/features/welcome_to_collegro/presentation/pages/welcome_to_collegro.dart';

import '../features/delete_account/presentation/pages/set_new_password_page_try_sign_in.dart';

class Routes {
  static const splashSreen = '/splashSreen';
  static const welcomeToCollegroPage = '/welcomeToCollegroPage';
  static const onBoardingScreen = '/onBoardingScreen';

  static const signUpScreen = '/signUpScreen';
  static const emailVerificationSingUp = '/emailVerificationSignUp';
  static const emailVerifiedSignUp = '/emailVerifiedSignUp';

  static const signInScren = '/signInScreen';
  static const verifyCodeSignIn = '/verifyCodeSignIn';
  static const verifyCode = '/verifyCode';
  static const setNewPassword = '/setNewPassword';

  static const deleteAccount = '/deleteAccount';
  static const enterEmail = '/enterEmail';
  static const enterVerificationCode = '/enterVerificationCode';
  static const setNewPasswordTrySignIn = '/setNewPasswordTrySignIn';


  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    try {
      final Map<dynamic, String>? args = routeSettings.arguments as Map<dynamic, String>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case splashSreen:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashScreen(),
          );

        case welcomeToCollegroPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const WelcomeToCollegroPage(),
          );

        case onBoardingScreen:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OnboardingScreen(),
          );

        case signUpScreen:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SignUpScreen(),
          );

        case emailVerificationSingUp:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EmailVerificationSignUp(),
          );

        case emailVerifiedSignUp:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EmailVerifiedSignUp(),
          );

        case signInScren:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SignInPage(),
          );

        case setNewPassword:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SetNewPasword(),
          );

        case verifyCode:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const VerifyCode(),
          );

        case deleteAccount:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const DeleteAccount(),
          );
        case enterEmail:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EnterEmail(),
          );
        case enterVerificationCode:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const EnterVerificationCode(),
          );
        case setNewPasswordTrySignIn:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SetNewPasswordTrySignIn(),
          );

        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SplashScreen(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SplashScreen(),
      );
    }
  }
}
