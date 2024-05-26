import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router2.0_utils/route_transitions.dart';

abstract class CustomRouterUtils {
  static Widget customTransitionPageDecorator(
      {required Widget child,
      required Animation<double> animation,
      Curve? curve,
      double? rotation,
      required List<CustomAnimationTransitions> listOfTransition,
      SlidBeginTransition? slideOrigin}) {
    if (listOfTransition.length > 1) {
      return TransitionAnimations.helperSelector(
        item: listOfTransition[0],
        //CustomAnimationTransitions.buildScaleTransition,
        animation: animation,
        curve: curve,
        rotation: rotation,
        slideOrigin: slideOrigin,
        child: TransitionAnimations.helperSelector(
          child: child,
          item: listOfTransition[1],
          //CustomAnimationTransitions.buildRotationTransition,
          animation: animation,
          curve: curve,
          rotation: rotation,
          slideOrigin: slideOrigin,
        ),
      );
    } else {
      return TransitionAnimations.helperSelector(
        child: child,
        item: listOfTransition[1],
        //CustomAnimationTransitions.buildRotationTransition,
        animation: animation,
        curve: curve,
        rotation: rotation,
        slideOrigin: slideOrigin,
      );
    }
  }

  // app Root navigation key
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> dashboardNavigatorKey =
      GlobalKey<NavigatorState>();

  // company Admin View navigation Keys
  static final GlobalKey<NavigatorState> userManagementNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> classManagementNavigatorKey =
      GlobalKey<NavigatorState>();
}
