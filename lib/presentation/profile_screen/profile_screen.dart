import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_subtitle.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeaderContainer(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 41.h, vertical: 33.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 12.h, right: 53.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEmail,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin:
                                              EdgeInsets.only(bottom: 35.v)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email",
                                                        style: theme.textTheme
                                                            .headlineSmall),
                                                    SizedBox(height: 6.v),
                                                    Text("anjijolly@gmail.com",
                                                        style: CustomTextStyles
                                                            .headlineSmallLight)
                                                  ])))
                                    ])),
                            SizedBox(height: 11.v),
                            Divider(indent: 3.h),
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPhone,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin:
                                              EdgeInsets.only(bottom: 33.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 7.h, top: 3.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Telephone",
                                                    style: theme.textTheme
                                                        .headlineSmall),
                                                SizedBox(height: 2.v),
                                                Text("077 133 9343",
                                                    style: CustomTextStyles
                                                        .headlineSmallLight)
                                              ]))
                                    ])),
                            SizedBox(height: 13.v),
                            Divider(),
                            SizedBox(height: 19.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 12.h, right: 63.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin:
                                              EdgeInsets.only(bottom: 36.v)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Address",
                                                        style: theme.textTheme
                                                            .headlineSmall),
                                                    SizedBox(height: 6.v),
                                                    Text("Colombo, Sri Lanka.",
                                                        style: CustomTextStyles
                                                            .headlineSmallLight)
                                                  ])))
                                    ])),
                            SizedBox(height: 11.v),
                            Divider(indent: 3.h),
                            SizedBox(height: 19.v),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgBirthday,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin:
                                              EdgeInsets.only(bottom: 34.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.h, top: 4.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Birthday",
                                                    style: theme.textTheme
                                                        .headlineSmall),
                                                SizedBox(height: 2.v),
                                                Text("1983-10-11",
                                                    style: CustomTextStyles
                                                        .headlineSmallLight)
                                              ]))
                                    ])),
                            SizedBox(height: 13.v),
                            Divider(indent: 4.h),
                            SizedBox(height: 19.v),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgAge,
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin:
                                              EdgeInsets.only(bottom: 34.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 11.h, top: 5.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Age",
                                                    style: theme.textTheme
                                                        .headlineSmall),
                                                SizedBox(height: 1.v),
                                                Text("37 Years",
                                                    style: CustomTextStyles
                                                        .headlineSmallLight)
                                              ]))
                                    ])),
                            SizedBox(height: 13.v),
                            Divider(indent: 4.h),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildHeaderContainer(BuildContext context) {
    return SizedBox(
        height: 289.v,
        width: 390.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1,
              height: 289.v,
              width: 390.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.only(top: 26.v, bottom: 16.v),
                  decoration: AppDecoration.outlineLightBlue,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        CustomAppBar(
                            height: 31.v,
                            leadingWidth: 58.h,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgBack,
                                margin:
                                    EdgeInsets.only(left: 28.h, bottom: 1.v),
                                onTap: () {
                                  onTapBack(context);
                                }),
                            centerTitle: true,
                            title: AppbarSubtitle(text: "Profile"),
                            actions: [
                              AppbarTrailingImage(
                                  imagePath: ImageConstant.imgMenuVertical,
                                  margin: EdgeInsets.only(
                                      left: 22.h, top: 1.v, right: 22.h),
                                  onTap: () {
                                    onTapMenuVertical(context);
                                  })
                            ]),
                        SizedBox(height: 18.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse3,
                            height: 134.adaptSize,
                            width: 134.adaptSize,
                            radius: BorderRadius.circular(67.h)),
                        SizedBox(height: 11.v),
                        Text("Anjalina Jolly",
                            style: theme.textTheme.headlineLarge)
                      ])))
        ]));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the profileScreenMoreBtnScreen when the action is triggered.
  onTapMenuVertical(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreenMoreBtnScreen);
  }
}
