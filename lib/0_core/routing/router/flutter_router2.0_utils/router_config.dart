/*import 'package:flutter/material.dart';
import 'package:flutter_desktop_test_app/core/router/menue-wrapper/menu_wrapper.dart';
import 'package:flutter_desktop_test_app/core/router/router_utils/route_utils_exports.dart';
import 'package:flutter_desktop_test_app/core/router/util-screens/splash_screen.dart';
import 'package:flutter_desktop_test_app/features/class-management/classes_list.dart';
import 'package:flutter_desktop_test_app/features/dashboard/dashboard_screen.dart';
import 'package:flutter_desktop_test_app/features/user-management/user_list.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth_screens_export.dart';

class AppRouter extends ChangeNotifier {
  late final GoRouter _router = GoRouter(
      navigatorKey: CustomRouterUtils.rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: GoRouterPaths.rootPath,
      redirect: (BuildContext context, GoRouterState state) {},
      routes: [
        StatefulShellRoute.indexedStack(
            parentNavigatorKey: CustomRouterUtils.rootNavigatorKey,

            branches: [
              /// dashboard screen
              StatefulShellBranch(
                navigatorKey: CustomRouterUtils.dashboardNavigatorKey,
                routes: [
                  GoRoute(
                    path: GoRouterPaths.rootPath,
                    name: GoRouterPaths.rootName,
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return CustomTransitionPage(
                          child: const Dashboard(),
                          transitionsBuilder:
                              (context, animation, _, Widget child) {
                            return CustomRouterUtils.customTransitionPageDecorator(
                              child: child,
                              animation: animation,
                              listOfTransition: [
                                CustomAnimationTransitions.buildSlideTransition,
                                CustomAnimationTransitions.buildScaleTransition
                              ],
                              curve: Curves.bounceInOut,
                              slideOrigin: SlidBeginTransition.fromLeft,
                            );
                          });
                    },

                  )
                ],
              ),
              /// userManagement flow
              StatefulShellBranch(
                navigatorKey: CustomRouterUtils.userManagementNavigatorKey,
                routes: [
                  GoRoute(
                    path: GoRouterPaths.userManagementPath,
                    name: GoRouterPaths.userManagementName,
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return CustomTransitionPage(
                          child: const UserList(),
                          transitionsBuilder:
                              (context, animation, _, Widget child) {
                            return CustomRouterUtils.customTransitionPageDecorator(
                              child: child,
                              animation: animation,
                              listOfTransition: [
                                CustomAnimationTransitions.buildSlideTransition,
                                CustomAnimationTransitions.buildScaleTransition
                              ],
                              curve: Curves.bounceInOut,
                              slideOrigin: SlidBeginTransition.fromLeft,
                            );
                          });
                    },
                  )
                ],
              ),
              /// classes management flow
              StatefulShellBranch(
                navigatorKey: CustomRouterUtils.classManagementNavigatorKey,
                routes: [
                  GoRoute(
                    path: GoRouterPaths.classManagementPath,
                    name: GoRouterPaths.classManagementName,
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      return CustomTransitionPage(
                          child: const ClassList(),
                          transitionsBuilder:
                              (context, animation, _, Widget child) {
                            return CustomRouterUtils.customTransitionPageDecorator(
                              child: child,
                              animation: animation,
                              listOfTransition: [
                                CustomAnimationTransitions.buildSlideTransition,
                                CustomAnimationTransitions.buildScaleTransition
                              ],
                              curve: Curves.bounceInOut,
                              slideOrigin: SlidBeginTransition.fromLeft,
                            );
                          });
                    },
                  )
                ],
              ),
            ],

            pageBuilder: (BuildContext context, GoRouterState state,
                StatefulNavigationShell shell) {
              return NoTransitionPage(
                  key: state.pageKey,
                  child: ResponsiveMenuWrapper(shell: shell));
            }),
        GoRoute(
          path: GoRouterPaths.splashPath,
          name: GoRouterPaths.splashName,
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen(),
        ),
        GoRoute(
            parentNavigatorKey: CustomRouterUtils.rootNavigatorKey,
            path: GoRouterPaths.authenticationRootPath,
            name: GoRouterPaths.authenticationRootName,
            builder: (BuildContext context, GoRouterState state) => Container(),
            redirect: (BuildContext context, GoRouterState state) {
              if (state.fullPath == GoRouterPaths.authenticationRootPath) {
                return '${GoRouterPaths.authenticationRootPath}/${GoRouterPaths.authLoginPath}';
              }
              return null;
            },
            routes: [
              GoRoute(
                path: GoRouterPaths.authLoginPath,
                name: GoRouterPaths.authLoginName,
                parentNavigatorKey: CustomRouterUtils.rootNavigatorKey,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return CustomTransitionPage(
                      child: const LoginScreen(),
                      transitionsBuilder:
                          (context, animation, _, Widget child) {
                        return CustomRouterUtils.customTransitionPageDecorator(
                          child: child,
                          animation: animation,
                          listOfTransition: [
                            CustomAnimationTransitions.buildSlideTransition,
                            CustomAnimationTransitions.buildScaleTransition
                          ],
                          curve: Curves.bounceInOut,
                          slideOrigin: SlidBeginTransition.fromLeft,
                        );
                      });
                },
              ),
              GoRoute(
                path: GoRouterPaths.authUserRegistrationPath,
                name: GoRouterPaths.authUserRegistrationName,
                parentNavigatorKey: CustomRouterUtils.rootNavigatorKey,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return CustomTransitionPage(
                      child: const RegisterScreen(),
                      transitionsBuilder:
                          (context, animation, _, Widget child) {
                        return CustomRouterUtils.customTransitionPageDecorator(
                          child: child,
                          animation: animation,
                          listOfTransition: [
                            CustomAnimationTransitions.buildSlideTransition,
                            CustomAnimationTransitions.buildScaleTransition
                          ],
                          curve: Curves.bounceInOut,
                          slideOrigin: SlidBeginTransition.fromLeft,
                        );
                      });
                },
              ),

            ]),
      ]);

  get router => _router;
}*/
