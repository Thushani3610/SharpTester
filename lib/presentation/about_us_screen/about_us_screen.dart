import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';
import 'package:lab_mgt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.h, vertical: 26.v),
                    child: Column(children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Container(
                              height: 259.v,
                              width: 313.h,
                              decoration: AppDecoration.outlineBlack9003f1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3,
                                    height: 259.v,
                                    width: 313.h,
                                    radius: BorderRadius.circular(9.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 33.h, vertical: 79.v),
                                        decoration: AppDecoration.fillPrimary1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 6.v),
                                              SizedBox(
                                                  width: 245.h,
                                                  child: Text(
                                                      "“We are the most prominent Lab report analyzing info provider”",
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .headlineSmallOnPrimaryContainer))
                                            ])))
                              ]))),
                      SizedBox(height: 54.v),
                      _buildContactForm(context),
                      SizedBox(height: 5.v)
                    ])))));
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
        title: AppbarTitle(text: "About us"));
  }

  /// Section Widget
  Widget _buildContactForm(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 19.v),
        decoration: AppDecoration.outlineLightblue600
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Get in touch with Us!",
                  style: theme.textTheme.headlineSmall),
              SizedBox(height: 18.v),
              CustomTextFormField(
                  controller: nameController,
                  hintText: "Name",
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 13.v, 5.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 30.adaptSize,
                          width: 30.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 57.v),
                  contentPadding:
                      EdgeInsets.only(top: 17.v, right: 30.h, bottom: 17.v)),
              SizedBox(height: 16.v),
              CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 13.v, 4.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEmail,
                          height: 30.adaptSize,
                          width: 30.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 57.v),
                  contentPadding:
                      EdgeInsets.only(top: 17.v, right: 30.h, bottom: 17.v)),
              SizedBox(height: 17.v),
              CustomTextFormField(
                  controller: messageController,
                  hintText: "Message...",
                  textInputAction: TextInputAction.done,
                  maxLines: 3),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  width: 140.h,
                  text: "Send",
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 6.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEmailSend,
                          height: 20.adaptSize,
                          width: 20.adaptSize))),
              SizedBox(height: 3.v)
            ]));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
