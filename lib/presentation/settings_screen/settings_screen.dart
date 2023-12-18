import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';
import 'package:lab_mgt/widgets/custom_icon_button.dart';
import 'package:lab_mgt/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 35.h, top: 60.v, right: 35.h),
                child: Column(children: [
                  _buildLanguageRow(context),
                  SizedBox(height: 37.v),
                  _buildNotificationRow(context),
                  SizedBox(height: 37.v),
                  _buildDarkModeRow(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack30x30,
            margin: EdgeInsets.only(left: 28.h, top: 11.v, bottom: 14.v),
            onTap: () {
              onTapBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Settings"));
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomIconButton(
          height: 65.adaptSize,
          width: 65.adaptSize,
          padding: EdgeInsets.all(17.h),
          child: CustomImageView(imagePath: ImageConstant.imgIcon)),
      Padding(
          padding: EdgeInsets.only(left: 17.h, top: 19.v, bottom: 16.v),
          child: Text("Language", style: theme.textTheme.headlineSmall)),
      Container(
          width: 113.h,
          margin: EdgeInsets.only(left: 27.h, top: 10.v, bottom: 10.v),
          padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 9.v),
          decoration: AppDecoration.fillBlue10087
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text("English",
                    style: CustomTextStyles.bodyLargeInriaSansLightblue600)),
            CustomImageView(
                imagePath: ImageConstant.imgChevronRight,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(left: 18.h, top: 3.v))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildNotificationRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomIconButton(
          height: 65.adaptSize,
          width: 65.adaptSize,
          padding: EdgeInsets.all(17.h),
          child: CustomImageView(imagePath: ImageConstant.imgIcon65x65)),
      Padding(
          padding: EdgeInsets.only(top: 15.v, bottom: 20.v),
          child: Text("Notifications", style: theme.textTheme.headlineSmall)),
      Container(
          width: 91.h,
          margin: EdgeInsets.symmetric(vertical: 10.v),
          padding: EdgeInsets.symmetric(vertical: 9.v),
          decoration: AppDecoration.fillBlue10087
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                child: Text("On",
                    style: CustomTextStyles.bodyLargeInriaSansLightblue600)),
            CustomImageView(
                imagePath: ImageConstant.imgChevronRight,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(top: 1.v))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildDarkModeRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 65.v,
          width: 273.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: EdgeInsets.only(top: 15.v, right: 57.h),
                    child: Text("Notifications",
                        style: theme.textTheme.headlineSmall))),
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 273.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                              height: 65.adaptSize,
                              width: 65.adaptSize,
                              padding: EdgeInsets.all(17.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup20)),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 21.v),
                              child: Text("On",
                                  style: CustomTextStyles
                                      .bodyLargeInriaSansLightblue600))
                        ])))
          ])),
      CustomSwitch(
          margin: EdgeInsets.only(left: 9.h, top: 22.v, bottom: 23.v),
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          })
    ]);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
