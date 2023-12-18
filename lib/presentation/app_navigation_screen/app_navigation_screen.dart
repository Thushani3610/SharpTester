import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LogReg screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logregScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile screen-more btn",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreenMoreBtnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen-side menu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenSideMenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "about us screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Near Labs screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nearLabsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Report screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Report View screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reportViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Test screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.testScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Test info screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.testInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FeedBack screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedbackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
