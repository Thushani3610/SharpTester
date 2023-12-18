import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';
import 'package:lab_mgt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({Key? key}) : super(key: key);

  TextEditingController thoughtsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 39.h, top: 60.v, right: 39.h),
                child: Column(children: [
                  _buildThirty(context),
                  SizedBox(height: 36.v),
                  _buildThirtyThree(context),
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
        title: AppbarTitle(text: "Give FeedBack"));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(children: [
          Text("What do you think of our service?",
              style: CustomTextStyles.titleLargeInriaSans),
          SizedBox(height: 18.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomImageView(
                imagePath: ImageConstant.imgTongueOut,
                height: 60.adaptSize,
                width: 60.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgSad,
                height: 60.adaptSize,
                width: 60.adaptSize),
            SizedBox(
                height: 60.adaptSize,
                width: 60.adaptSize,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(27.h)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgNeutral,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      alignment: Alignment.center)
                ])),
            CustomImageView(
                imagePath: ImageConstant.imgHappy,
                height: 60.adaptSize,
                width: 60.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgLol,
                height: 60.adaptSize,
                width: 60.adaptSize)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(children: [
          SizedBox(
              width: 306.h,
              child: Text("Do you have any thoughts you’d like \nto share?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeInriaSans)),
          SizedBox(height: 23.v),
          CustomTextFormField(
              controller: thoughtsController,
              hintText: "Your thoughts...",
              hintStyle: CustomTextStyles.titleLargeInriaSansGray40001,
              textInputAction: TextInputAction.done,
              maxLines: 5,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v),
              borderDecoration: TextFormFieldStyleHelper.outlineLightBlueTL8),
          SizedBox(height: 32.v),
          CustomElevatedButton(
              width: 140.h,
              text: "Send",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEmailSend,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              onPressed: () {
                onTapSend(context);
              })
        ]));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
