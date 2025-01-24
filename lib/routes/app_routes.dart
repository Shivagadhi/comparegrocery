
import 'package:comparegrocery/presentation/pages/detail_screen/detail_screen.dart';
import 'package:comparegrocery/presentation/pages/home_screen.dart';
import 'package:comparegrocery/presentation/pages/user_review/userreview_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/signin_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String signinScreen = '/signin_screen';
  static const String detailScreen = '/detail_screen';
  static const String userreviewScreen = '/userreview_screen';
  static const String homeScreen = '/home_screen';
  static const String homeInitialPage = '/home_initial_page';
  static const String searchScreen = '/search_screen';
  static const String submitScreen = '/submit_screen';
  static const String notificationScreen = '/notification_screen';
  static const String profileScreen = '/profile_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    signinScreen: (context) => SigninScreen(),
    detailScreen: (context) => DetailScreen(),
    userreviewScreen: (context) => UserreviewScreen(),
    homeScreen: (context) => HomeScreen(),
    // searchScreen: (context) => SearchScreen(),
    // submitScreen: (context) => SubmitScreen(),
    // notificationScreen: (context) => NotificationScreen(),
    // profileScreen: (context) => ProfileScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SigninScreen(),
  };
}
