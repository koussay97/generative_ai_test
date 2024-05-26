
abstract class GoRouterPaths{

  static const splashPath = '/welcome';
  static const splashName = 'splash';

  static const authenticationRootPath = '/Authentication';
  static const authenticationRootName = 'authentication';

  // subRoutes under auth
  static const authLoginPath = 'login';
  static const authLoginName = 'loginScreen';

  static const authOnBoardingPath = 'onBoarding';
  static const authOnBoardingName = 'On Boarding';

  static const authUserRegistrationPath = 'register';
  static const authUserRegistrationName = 'Register Account';

  static const successPath = 'success';
  static const successName = 'success';

  static const thankYouPath = 'thankYou';
  static const thankYouName = 'thank You';


  static const rootPath = '/dashboard';
  static const rootName = 'DashBoard';

  static const userManagementName = 'users screen';
  static const userManagementPath = '/users';

  static const classManagementName = 'classes screen';
  static const classManagementPath = '/class';


  static const notAuthorizedRoutePath = '/403';
  static const notAuthorizedRouteName = 'not Authorized';

  static const notFoundRoutePath = '/404';
  static const notFoundRouteName = 'Page Not Found';

}