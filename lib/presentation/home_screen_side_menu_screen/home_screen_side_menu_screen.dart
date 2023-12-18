import '../home_screen_side_menu_screen/widgets/reportbuttongrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/presentation/home_screen_page/home_screen_page.dart';
import 'package:lab_mgt/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreenSideMenuScreen extends StatelessWidget {
  HomeScreenSideMenuScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue50,
            body: Container(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillLightblue50,
                child: Stack(alignment: Alignment.center, children: [
                  _buildMenuImage(context),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("Good Evening, Deelaka!",
                                style: CustomTextStyles.headlineSmallInter),
                            SizedBox(height: 32.v),
                            _buildHealthSuggestionColumn(context),
                            SizedBox(height: 68.v),
                            _buildReportButtonGrid(context)
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 18.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup72),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 4.h, right: 95.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLogo1,
                                          height: 37.v,
                                          width: 141.h),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 88.h,
                                              top: 6.v,
                                              bottom: 6.v),
                                          onTap: () {
                                            onTapImgClose(context);
                                          })
                                    ])),
                                SizedBox(height: 6.v),
                                Divider(endIndent: 87.h),
                                SizedBox(height: 26.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse3,
                                    height: 134.adaptSize,
                                    width: 134.adaptSize,
                                    radius: BorderRadius.circular(67.h),
                                    margin: EdgeInsets.only(left: 66.h)),
                                SizedBox(height: 18.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 29.h),
                                    child: Text("Anjalina Jolly",
                                        style: CustomTextStyles
                                            .headlineLargePrimary)),
                                SizedBox(height: 32.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapHomeLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgHomePage,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 2.v, bottom: 1.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Home",
                                                  style: theme.textTheme
                                                      .headlineMedium))
                                        ]))),
                                SizedBox(height: 29.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapViewReportLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 22.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgBusinessReport,
                                                  height: 28.adaptSize,
                                                  width: 28.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 5.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Text("View Reports",
                                                      style: theme.textTheme
                                                          .headlineMedium))
                                            ]))),
                                SizedBox(height: 24.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgComboChart,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 1.v, bottom: 2.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("Statistics",
                                              style: theme
                                                  .textTheme.headlineMedium))
                                    ])),
                                SizedBox(height: 27.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapNearLabsLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTestTube,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 1.v, bottom: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Near Labs",
                                                  style: theme.textTheme
                                                      .headlineMedium))
                                        ]))),
                                SizedBox(height: 28.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapYourProfileLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgProfile,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 1.v, bottom: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Your Profile",
                                                  style: theme.textTheme
                                                      .headlineMedium))
                                        ]))),
                                SizedBox(height: 29.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapSettingsLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 3.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Settings",
                                                  style: theme.textTheme
                                                      .headlineMedium))
                                        ]))),
                                SizedBox(height: 26.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapAboutUsLink(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgInfo,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 2.v, bottom: 1.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("About us",
                                                  style: theme.textTheme
                                                      .headlineMedium))
                                        ]))),
                                SizedBox(height: 26.v)
                              ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildMenuImage(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
            decoration: AppDecoration.fillPrimary,
            child: CustomImageView(
                imagePath: ImageConstant.imgMenu53x35,
                height: 53.v,
                width: 35.h)));
  }

  /// Section Widget
  Widget _buildHealthSuggestionColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 92.h, vertical: 72.v),
        decoration: AppDecoration.outlineBlackF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.v),
              Text("Health suggetions",
                  style: CustomTextStyles.titleLargeBlue50)
            ]));
  }

  /// Section Widget
  Widget _buildReportButtonGrid(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 138.v,
            crossAxisCount: 2,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ReportbuttongridItemWidget();
        });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Timesheet:
        return "/";
      case BottomBarEnum.Plus:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Map:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapHomeLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapViewReportLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }

  /// Navigates to the nearLabsScreen when the action is triggered.
  onTapNearLabsLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nearLabsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapYourProfileLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSettingsLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapAboutUsLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutUsScreen);
  }
}
