import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fasting Blood Sugar",
                          style: CustomTextStyles.headlineLargeLightblue600),
                      SizedBox(height: 16.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle15,
                          height: 165.v,
                          width: 304.h,
                          radius: BorderRadius.circular(5.h),
                          margin: EdgeInsets.only(left: 7.h)),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("Key Messaurements",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("sugar count, ngn jjnfjgn jnjng, rrgrg",
                              style:
                                  CustomTextStyles.bodyLargeInriaSansPrimary)),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("More Info:",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 3.v),
                      Container(
                          width: 307.h,
                          margin: EdgeInsets.symmetric(horizontal: 4.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Many types of glucose tests exist and they  can be used to estimate ",
                                    style: CustomTextStyles
                                        .bodyLargeInriaSansPrimary18),
                                TextSpan(
                                    text: "blood sugar levels",
                                    style: CustomTextStyles
                                        .bodyLargeInriaSansPrimary18
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                TextSpan(
                                    text:
                                        "  at a given time or, over a longer period of  time, to obtain average levels or to see how fast body is able to normalize changed ",
                                    style: CustomTextStyles
                                        .bodyLargeInriaSansPrimary18),
                                TextSpan(
                                    text:
                                        "glucose levels. Eating food for example leads\n",
                                    style: CustomTextStyles
                                        .bodyLargeInriaSansPrimary18
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack30x30,
            margin: EdgeInsets.only(left: 28.h, top: 12.v, bottom: 13.v),
            onTap: () {
              onTapBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Tests Info"));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
