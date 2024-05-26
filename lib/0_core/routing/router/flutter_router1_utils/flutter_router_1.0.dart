import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router1_utils/page_route_builder.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router2.0_utils/route_transitions.dart';
import 'package:generative_language_test/1_features/authentication_feature/presentation/screens/login_screen.dart';
import 'package:generative_language_test/1_features/authentication_feature/presentation/screens/splash_screen.dart';
import 'package:generative_language_test/1_features/chat-bot-feature/presnetation/screens/chatbot_screen.dart';
import 'package:generative_language_test/1_features/product_feature/presentaion/screens/add_product_screen.dart';
import 'package:generative_language_test/1_features/product_feature/presentaion/screens/products_screen.dart';

import 'screen_names.dart';

abstract class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ScreenNames.splashScreenName:
        return MaterialPageRoute(
            builder: (_) => const ChatEcommerceSplashScreen());
      case ScreenNames.loginScreenName:
        return CustomPageRouteBuilder(
          curve: Curves.elasticInOut,
          customReverseTransitionDuration: const Duration(milliseconds: 800),
          customTransitionDuration: const Duration(milliseconds: 1000),
          page: const AuthScreenChatBotApp(),
          animationTransitions: [
            CustomAnimationTransitions.buildSlideTransition,
            CustomAnimationTransitions.buildScaleTransition
          ],
          slideOrigin: SlidBeginTransition.fromRight,
        );

      case ScreenNames.productsScreenName:
        return CustomPageRouteBuilder(
          curve: Curves.elasticInOut,
          customReverseTransitionDuration: const Duration(milliseconds: 800),
          customTransitionDuration: const Duration(milliseconds: 1000),
          page: const ProductScreen(),
          animationTransitions: [
            CustomAnimationTransitions.buildRotationTransition,
            CustomAnimationTransitions.buildScaleTransition
          ],
          rotation: 1,
          slideOrigin: SlidBeginTransition.fromLeft,
        );
      case ScreenNames.addProductScreenName:
        return CustomPageRouteBuilder(
          curve: Curves.elasticInOut,
          customReverseTransitionDuration: const Duration(milliseconds: 800),
          customTransitionDuration: const Duration(milliseconds: 1000),
          page: const AddProduct(),
          animationTransitions: [
            CustomAnimationTransitions.buildRotationTransition,
            CustomAnimationTransitions.buildScaleTransition
          ],
          rotation: 1,
          slideOrigin: SlidBeginTransition.fromLeft,
        );
      case ScreenNames.chatBotScreenName:
        return CustomPageRouteBuilder(
          curve: Curves.elasticInOut,
          customReverseTransitionDuration: const Duration(milliseconds: 800),
          customTransitionDuration: const Duration(milliseconds: 1000),
          page: const ChatBotScreen(),
          animationTransitions: [
            CustomAnimationTransitions.buildRotationTransition,
            CustomAnimationTransitions.buildScaleTransition
          ],
          rotation: 1,
          slideOrigin: SlidBeginTransition.fromLeft,
        );
      /*  case ScreenNames.addProductScreenName:
        if (args is Map<String, dynamic>) {
          return MaterialPageRoute(builder: (_) => const DriverScreen());
        } else {
          return _errorRoute();
        }*/
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: const Center(
          child: Text('not authorized'),
        ),
      );
    });
  }

  /// see if we could return a pop up instead of a full route
}
