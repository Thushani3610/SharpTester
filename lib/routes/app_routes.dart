import 'package:flutter/material.dart';
import 'package:lab_mgt/presentation/splash_screen/splash_screen.dart';
import 'package:lab_mgt/presentation/logreg_screen/logreg_screen.dart';
import 'package:lab_mgt/presentation/login_screen/login_screen.dart';
import 'package:lab_mgt/presentation/register_screen/register_screen.dart';
import 'package:lab_mgt/presentation/profile_screen/profile_screen.dart';
import 'package:lab_mgt/presentation/profile_screen_more_btn_screen/profile_screen_more_btn_screen.dart';
import 'package:lab_mgt/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:lab_mgt/presentation/home_screen_side_menu_screen/home_screen_side_menu_screen.dart';
import 'package:lab_mgt/presentation/about_us_screen/about_us_screen.dart';
import 'package:lab_mgt/presentation/near_labs_screen/near_labs_screen.dart';
import 'package:lab_mgt/presentation/report_screen/report_screen.dart';
import 'package:lab_mgt/presentation/report_view_screen/report_view_screen.dart';
import 'package:lab_mgt/presentation/test_screen/test_screen.dart';
import 'package:lab_mgt/presentation/test_info_screen/test_info_screen.dart';
import 'package:lab_mgt/presentation/feedback_screen/feedback_screen.dart';
import 'package:lab_mgt/presentation/settings_screen/settings_screen.dart';
import 'package:lab_mgt/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String logregScreen = '/logreg_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileScreenMoreBtnScreen =
      '/profile_screen_more_btn_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String homeScreenSideMenuScreen =
      '/home_screen_side_menu_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String nearLabsScreen = '/near_labs_screen';

  static const String reportScreen = '/report_screen';

  static const String reportViewScreen = '/report_view_screen';

  static const String testScreen = '/test_screen';

  static const String testInfoScreen = '/test_info_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    logregScreen: (context) => LogregScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileScreenMoreBtnScreen: (context) => ProfileScreenMoreBtnScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    homeScreenSideMenuScreen: (context) => HomeScreenSideMenuScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    nearLabsScreen: (context) => NearLabsScreen(),
    reportScreen: (context) => ReportScreen(),
    reportViewScreen: (context) => ReportViewScreen(),
    testScreen: (context) => TestScreen(),
    testInfoScreen: (context) => TestInfoScreen(),
    feedbackScreen: (context) => FeedbackScreen(),
    settingsScreen: (context) => SettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
